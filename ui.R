library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(shinyjs)
library(rintrojs)
library(shinyAce)

# a function to create an App Button
app_button <- function(title="AppName", icon="cube", caption="A caption", link="#", tooltip="A tooltip") {
  shiny::a(href=link,
    shiny::div(class="service-icon",
      shiny::a(icon(icon), href=link, `data-toggle`="tooltip", title=tooltip),
      shiny::h3(title),
      shiny::span(caption)
    )         
  )
}

# definition for the UI header
header <- dashboardHeaderPlus(title = tagList(span(class="logo-lg", "ERI Shiny Apps"), 
                                              img(src="img/corona.svg")))
# definition for the UI sidebar
sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Showcase", icon = icon("trophy"), tabName = "showcase"),
    menuItem("Develop", icon = icon("code"), tabName = "develop",
             menuSubItem("ERI App Template", tabName = "template"),
             menuSubItem("Deploy", tabName = "deploy")
             ),
    menuItem("Resources", icon = icon("link"), tabName = "resources")
  )
)

# definition for the UI body
body <- dashboardBody(
  # useShinyjs(),
  introjsUI(),
  # this brings in the custom css from the "www" folder
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "css/custom.css"),
    tags$link(rel = "icon", type = "image/x-icon", href = "img/favicon.ico")  
  ),
  tabItems(
    showcase_tab,
    template_tab,
    deploy_tab,
    resources_tab
  )
)

# bring it all together
ui <- dashboardPagePlus(header = header, 
                        sidebar = sidebar, 
                        body = body, 
                        title="ERI Shiny Apps", 
                        skin = "black")
