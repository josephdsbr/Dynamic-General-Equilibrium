## Application
require(shinydashboard)
#### ui ####
source(file.path('ui','menu-items.R'), local = T)$value
source(file.path('ui','table-1.R'), local = T)$value
source(file.path('ui','table-2.R'), local = T)$value
source(file.path('ui','table-3.R'), local = T)$value

sidebar <- dashboardSidebar(
  menu
)

header <- dashboardHeader(title = 'DSGE')

body <- dashboardBody(
  tabItems(
    info,
    download,
    modelo
  )
)

ui <- dashboardPage(
  shinyjs::useShinyjs(),
  header = header,
  body = body,
  sidebar = sidebar
  )


#### server ####

server <- function(input, output, session){
  source(file.path('server','model.R'), local = T)$value
  source(file.path('server','outcomes.R'), local = T)$value
}

#### Application ####
shinyApp(ui, server)