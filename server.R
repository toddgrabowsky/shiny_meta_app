library(shiny)
library(shinyEffects)
library(shinyWidgets)
library(shinydashboard)
library(shinydashboardPlus)
library(purrr)
library(yaml)

server <- function(input, output) { 
  # start the code showcase at the bottom of the screen
  #shinyjs::runjs('toggleCodePosition();')
  
  # read in YAML config file that defines the information for each app button
  apps <- read_yaml("config.yml")
  
  # dynamically generate the app buttons from the config file
  output$apps <- renderUI({
    map(1:length(apps), function(x) {
      app_button(title = apps[[x]]$title,
                 icon = apps[[x]]$icon,
                 caption = apps[[x]]$caption,
                 link = apps[[x]]$link,
                 tooltip = apps[[x]]$tooltip)
    })
  })
  
  observeEvent(input$help, {
     introjs(session, options = list("nextLabel"="Onwards and Upwards",
                                     "prevLabel"="Did you forget something?",
                                     "skipLabel"="Don't be a quitter"),
             events = list("oncomplete"=I('alert("Glad that is over")')))
  })
}