#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinyEffects)
library(shinyWidgets)
library(shinydashboard)
library(shinydashboardPlus)
library(yaml)

header <- dashboardHeaderPlus(title = tagList(span(class="logo-lg", "ERI Shiny Apps"), 
                                              img(src="img/corona.svg")))
sidebar <- dashboardSidebar()
body <- dashboardBody(uiOutput("apps"))

ui <- dashboardPagePlus(header = header, 
                        sidebar = sidebar, 
                        body = body, 
                        title="ERI Shiny Apps", 
                        skin = "black")

server <- function(input, output) { 
    
    output$apps <- renderUI({
        app_button()
    })
}

shinyApp(ui, server)


