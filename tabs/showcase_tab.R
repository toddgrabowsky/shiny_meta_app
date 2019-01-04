showcase_tab <- tabItem(tabName = "showcase",
        fluidRow(
          column(10, offset = 1,
                 h2("ERI App Showcase"),
                 "Welcome to the ERI Shiny Web Applications Page! 
          This site is compiled from a series of shiny applications 
          by various ERI employees in order to show how data science 
          and visualization techniques can be accomplished using the 
          R programming language, javascript, jQuery, and Shiny. 
          Use the Directory Index to explore various Shiny Applications, 
          or just click below! Explore Slide Decks and Data Visualizations 
          pages for further ways to enhance your web apps built with 
          R Shiny or with other software tools and frameworks."
          )
        ),
        fluidRow(
          column(10, offset = 1, 
                 div(id="app-icons",
                     uiOutput("apps")
                 )
          )
        )
)