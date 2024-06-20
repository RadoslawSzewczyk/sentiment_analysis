import dash
from dash import dcc, html
import dash_bootstrap_components as dbc
from dash.dependencies import Input, Output, State
import re
from build import classificator_module as cm
from pathlib import Path

model_path = Path("/home/radek/repos/sentiment_analysis/models/model.txt")
data_path = Path("amazon_review_polarity_csv/ttest.csv")
load_model = Path("amazon_review_polarity_csv/tokensTrainSmall.csv")

data = cm.dataAmazonReview(str(data_path), load_model, "")
model = cm.naiveBayes(data)
model.train()

app = dash.Dash(__name__, external_stylesheets=[dbc.themes.BOOTSTRAP])

app.layout = dbc.Container([
    dbc.Row([
        dbc.Col(html.H1("Sentiment Analysis"), className="mb-2")
    ]),
    dbc.Row([
        dbc.Col(html.Div("Enter text to analyze:"), width=2),
        dbc.Col(dcc.Textarea(id="input-text", style={'width': '100%', 'height': 100}), width=8),
    ]),
    dbc.Row([
        dbc.Col(dbc.Button("Analyze", id="analyze-button", color="primary"), width=2),
        dbc.Col(dbc.Button("About the Author", id="about-button", color="secondary"), width=2),
    ]),
    dbc.Row([
        dbc.Col(html.Div(id="output-div"), width=12)
    ]),
    dbc.Modal(
        [
            dbc.ModalHeader("About the Author"),
            dbc.ModalBody(
                html.Div([
                    "Author: Radoslaw Szewczyk",
                    html.Br(),
                    "Projekt PK4 under the supervision of Grzegorz Kwiatkowski."
                ])
            ),
            dbc.ModalFooter(
                dbc.Button("Close", id="close-modal", className="ml-auto")
            ),
        ],
        id="modal",
        centered=True,
    ),
    dbc.Modal(
        [
            dbc.ModalHeader("Error"),
            dbc.ModalBody(id="error-message"),
            dbc.ModalFooter(
                dbc.Button("Close", id="close-error-modal", className="ml-auto")
            ),
        ],
        id="error-modal",
        centered=True,
    )
], fluid=True)

def validate_input(text):
    if re.search(r'[^a-zA-Z\s]', text):
        return False
    return True


@app.callback(
    Output("output-div", "children"),
    Output("error-modal", "is_open"),
    Output("error-message", "children"),
    Output("modal", "is_open"),
    Input("analyze-button", "n_clicks"),
    Input("about-button", "n_clicks"),
    Input("close-modal", "n_clicks"),
    Input("close-error-modal", "n_clicks"),
    State("input-text", "value"),
    State("error-modal", "is_open"),
    State("modal", "is_open"),
)
def manage_callbacks(analyze_clicks, about_clicks, close_modal_clicks, close_error_modal_clicks, input_text, is_error_modal_open, is_about_modal_open):
    ctx = dash.callback_context

    if not ctx.triggered:
        return "", is_error_modal_open, "", is_about_modal_open

    button_id = ctx.triggered[0]['prop_id'].split('.')[0]

    if button_id == "analyze-button":
        if input_text is None or not validate_input(input_text):
            return "", True, "Input contains invalid characters. Please enter text without numbers or special characters.", is_about_modal_open

        tokenized_text = data.processSingleLine(input_text)
        prediction = model.predict(tokenized_text)
        sentiment_label = "Positive" if prediction[0] == 2 else "Negative"
        return f"Predicted Sentiment: {sentiment_label}, Confidence: {round(prediction[1], 4)}", False, "", is_about_modal_open

    if button_id == "about-button":
        return "", is_error_modal_open, "", not is_about_modal_open

    if button_id == "close-modal":
        return "", is_error_modal_open, "", not is_about_modal_open

    if button_id == "close-error-modal":
        return "", not is_error_modal_open, "", is_about_modal_open

    return "", is_error_modal_open, "", is_about_modal_open

if __name__ == '__main__':
    app.run_server(debug=True)
