resources_tab <- tabItem(tabName = "resources", 
        fluidRow(
          column(10, offset=1,
                 h2("Useful Shiny Resources"),
                 tags$ul(
                   tags$li(a(target = "_blank", href="https://shiny.rstudio.com/tutorial/", "RStudio's Shiny tutorials")),
                   tags$li(a(target = "_blank", href="https://rstudio.github.io/shinydashboard/", "The shinydashboard package")),
                   tags$li(a(target = "_blank", href="https://www.htmlwidgets.org/index.html", "Useful Widgets to Use with Shiny")),
                   tags$li(a(target = "_blank", href="https://deanattali.com/shinyjs/", "The shinyjs package")),
                   tags$li(a(target = "_blank", href="https://github.com/road2stat/awesome-shiny-extensions", "A Nice Collection of Additional Shiny Extensions"))
                 )
          )
        )
)