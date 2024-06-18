import dash
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Input, Output
import plotly.graph_objs as go

# Initialize the Dash app
app = dash.Dash(__name__)

# Define the layout of the app
app.layout = html.Div([
    html.H1("Simple Graphs with Dash"),
    dcc.Graph(id='example-graph'),
    dcc.Slider(
        id='slider',
        min=0,
        max=10,
        step=0.5,
        value=5,
    )
])

# Define callback to update graph based on slider input
@app.callback(
    Output('example-graph', 'figure'),
    [Input('slider', 'value')]
)
def update_figure(value):
    x = list(range(10))
    y = [i * value for i in x]
    figure = {
        'data': [go.Scatter(
            x=x,
            y=y,
            mode='lines+markers'
        )],
        'layout': go.Layout(
            title='Interactive Graph',
            xaxis={'title': 'X-axis'},
            yaxis={'title': 'Y-axis'}
        )
    }
    return figure

# Run the app
if __name__ == '__main__':
    app.run_server(debug=True)
