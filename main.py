import dash
from dash import dcc, html
import dash_bootstrap_components as dbc
from dash.dependencies import Input, Output, State
import os
from build import classificator_module

app = dash.Dash(__name__, external_stylesheets=[dbc.themes.BOOTSTRAP])

app.layout = dbc.Container([
    dbc.Row([
        dbc.Col(html.H1("Sentiment Analysis App"), className="mb-4")
    ]),
    dbc.Row([
        dbc.Col([
            dbc.Label("Input File Path"),
            dbc.Input(id="input-path", type="text", placeholder="Enter input file path"),
            dbc.Button("Browse", id="browse-input", className="mt-2"),
            dcc.Store(id="input-path-store")
        ], width=6),
        dbc.Col([
            dbc.Label("Output File Path"),
            dbc.Input(id="output-path", type="text", placeholder="Enter output file path"),
            dbc.Button("Browse", id="browse-output", className="mt-2"),
            dcc.Store(id="output-path-store")
        ], width=6)
    ]),
    dbc.Row([
        dbc.Col([
            dbc.Button("Train", id="train-button", color="primary", className="mt-4"),
            html.Div(id="train-output", className="mt-4")
        ])
    ]),
    dbc.Row([
        dbc.Col([
            dbc.Label("Pre-trained Model Path"),
            dbc.Input(id="model-path", type="text", placeholder="Enter model file path"),
            dbc.Button("Browse", id="browse-model", className="mt-2"),
            dcc.Store(id="model-path-store")
        ], width=6),
        dbc.Col([
            dbc.Button("Load Model", id="load-model-button", color="primary", className="mt-4"),
            html.Div(id="load-model-output", className="mt-4")
        ])
    ]),
    dbc.Row([
        dbc.Col([
            dbc.Label("Features (comma-separated)"),
            dbc.Input(id="features", type="text", placeholder="Enter features"),
            dbc.Button("Predict", id="predict-button", color="primary", className="mt-2"),
            html.Div(id="predict-output", className="mt-4")
        ])
    ]),
    html.Div(id="dummy-div", style={"display": "none"})
], fluid=True)

app.clientside_callback(
    """
    function(n_clicks) {
        if (n_clicks) {
            var input = document.createElement('input');
            input.type = 'file';
            input.onchange = function(event) {
                var filePath = event.target.files[0].path;
                var output = {'path': filePath};
                var div = document.getElementById('dummy-div');
                div.setAttribute('data-path', JSON.stringify(output));
            };
            input.click();
        }
        return window.dummyOutput;
    }
    """,
    Output("dummy-div", "data-path"),
    [Input("browse-input", "n_clicks")],
    [State("dummy-div", "data-path")]
)

app.clientside_callback(
    """
    function(n_clicks) {
        if (n_clicks) {
            var input = document.createElement('input');
            input.type = 'file';
            input.onchange = function(event) {
                var filePath = event.target.files[0].path;
                var output = {'path': filePath};
                var div = document.getElementById('dummy-div');
                div.setAttribute('data-path', JSON.stringify(output));
            };
            input.click();
        }
        return window.dummyOutput;
    }
    """,
    Output("dummy-div", "data-path"),
    [Input("browse-output", "n_clicks")],
    [State("dummy-div", "data-path")]
)

app.clientside_callback(
    """
    function(n_clicks) {
        if (n_clicks) {
            var input = document.createElement('input');
            input.type = 'file';
            input.onchange = function(event) {
                var filePath = event.target.files[0].path;
                var output = {'path': filePath};
                var div = document.getElementById('dummy-div');
                div.setAttribute('data-path', JSON.stringify(output));
            };
            input.click();
        }
        return window.dummyOutput;
    }
    """,
    Output("dummy-div", "data-path"),
    [Input("browse-model", "n_clicks")],
    [State("dummy-div", "data-path")]
)

@app.callback(
    Output("input-path", "value"),
    Input("dummy-div", "data-path")
)
def update_input_path(data):
    if data:
        return data["path"]
    return ""


@app.callback(
    Output("output-path", "value"),
    Input("dummy-div", "data-path")
)
def update_output_path(data):
    if data:
        return data["path"]
    return ""


@app.callback(
    Output("model-path", "value"),
    Input("dummy-div", "data-path")
)
def update_model_path(data):
    if data:
        return data["path"]
    return ""


@app.callback(
    Output("train-output", "children"),
    Input("train-button", "n_clicks"),
    State("input-path", "value"),
    State("output-path", "value")
)
def train_model(n_clicks, input_path, output_path):
    if n_clicks is None:
        return ""
    if not os.path.exists(input_path):
        return "Error: Input file does not exist."

    review = classificator_module.dataAmazonReview(input_path, output_path, "Amazon Review")
    global nb
    nb = classificator_module.naiveBayes(review)
    nb.train()
    return "Training completed successfully."


@app.callback(
    Output("load-model-output", "children"),
    Input("load-model-button", "n_clicks"),
    State("model-path", "value")
)
def load_model(n_clicks, model_path):
    if n_clicks is None:
        return ""
    if not os.path.exists(model_path):
        return "Error: Model file does not exist."

    global nb
    nb = classificator_module.naiveBayes()
    nb.readFromFile(model_path)
    return "Model loaded successfully."


@app.callback(
    Output("predict-output", "children"),
    Input("predict-button", "n_clicks"),
    State("features", "value")
)
def predict(n_clicks, features):
    if n_clicks is None:
        return ""
    if not features:
        return "Error: Please enter features."

    if 'nb' not in globals():
        return "Error: Please train the model or load a pre-trained model first."

    feature_list = list(map(int, features.split(',')))
    prediction = nb.predict(feature_list)
    return f"Prediction: {prediction}"


if __name__ == "__main__":
    app.run_server(debug=True)
