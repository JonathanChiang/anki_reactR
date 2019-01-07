library(htmltools)
library(reactR)
library(V8)
#sudo apt-get install libv8-3.14-dev
tagList(
  reactR::html_dependency_react(),
  tags$div(id = "example"),
  tags$script(HTML(
    babel_transform(
      "
ReactDOM.render(
  <div>
    <h1>React + R = BFF</h1>
    <p>This should probably be airbrushed Spring Break style
    on a t-shirt or license plate.
    </p>
  </div>,
  document.getElementById('example')
)
"
    )
  ))
)