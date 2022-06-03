library(plotly)
library(shiny)
library(data.table)
library(magrittr)

# read preprocessed building block data, extracted from DeFi transactions
protocol_tree <- read.csv("./protocol_tree.csv", sep = ";", dec =",", stringsAsFactors = FALSE) %>% as.data.table() %>%  .[, X := NULL] %>% .[order(ids)] 

# unique protocols
p <- unique(protocol_tree[is.na(parents), as.character(ids)])

# user interface
ui <- fluidPage(

    # Application title
    titlePanel("DeFi Composition Demo-App"),
    
    fluidRow(
        hr(),
        column(12,
           wellPanel(
            plotlyOutput('plot')
           )
        )
    )
)


# server logic
server <- function(input, output) {
    
    output$plot <- renderPlotly({
        
        fig <- plot_ly(
            type='treemap',
            ids=protocol_tree$ids,
            labels=protocol_tree$labels,
            parents=protocol_tree$parents,
            values=protocol_tree$values,
            hoverinfo="label",
            textfont = list(color = "black", size = 15)
            )
        
    })

}

# Run the application 
shinyApp(ui = ui, server = server)
