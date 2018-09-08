library(shiny)
library(shinydashboard)
library(plotly)
#### Rows ####

### Row 1

menu <-  sidebarMenu(
  menuItem('Estatisticas', tabName = 'general', icon = icon('dashboard')),
  menuItem('Graficos', tabName = 'grafico', icon = icon('glyphicon glyphicon-th-large', lib = 'glyphicon')),
  menuItem('Modelo', tabName = 'model', icon = icon('glyphicon glyphicon-download', lib = 'glyphicon')),
      sliderInput('beta',
                  'Elasticidade Utilidade-Consumo',
                  min = 0, max = 1, value = 0.5) ,

      sliderInput('A',
                  'Produtividade Total dos Fatores',
                  min = 0,
                  max = 2,
                  value = 1,
                  step = 0.25),

      status = 'primary',sliderInput('K',
                  'Estoque de Capital Fisico',
                  min = 0,
                  max = 100,
                  value = 70,
                  step = 10),
  

      status = 'primary',sliderInput('alpha',
                  'Elasticidade Produção-Capital',
                  min = 0,
                  max = 1,
                  value = 0.75,
                  step = 0.25)
)

### Info 1

info1 <- fluidRow(
  infoBoxOutput('Producao'),
  infoBoxOutput('Lucro'),
  infoBoxOutput('Despesas')
  )

info2 <-  fluidRow(
  infoBoxOutput('Consumo'),
  infoBoxOutput('Salario'),
  infoBoxOutput('Lambda')
)

info3 <- fluidRow(
  infoBoxOutput('Lazer'),
  infoBoxOutput('Trabalho'))



graph <- tabItem(tabName = 'grafico',
                 fluidRow(
                  box(width = 6,
                      status = 'primary',
                      solidHeader = T,
                      collapsible = T,
                      collapsed = F,
                      title = 'Consumidor',
                      plotlyOutput('graph', width = 350, height = 200)),
                  box(width = 6,
                      status = 'warning',
                      solidHeader = T,
                      collapsible = T,
                      collapsed = F,
                      title = 'Utilidade',
                      plotlyOutput('graph2', width = 350, height = 200))),
                 
                 fluidRow(
                   box(width = 12,
                       status = 'primary',
                       solidHeader = T,
                       collapsible = T,
                       collapsed = T,
                       title = 'Mercado de Trabalho',
                       plotlyOutput('graph3'))
                 ),
                 
                 fluidRow(
                   box(width = 12,
                       status = 'primary',
                       solidHeader = T,
                       collapsible = T,
                       collapsed = T,
                       title = 'Firma',
                       plotlyOutput('graph1'))))

download <- tabItem(tabName = 'model',
                    fluidRow(
                      box(status = 'primary',
                          solidHeader = T,
                          collapsible = F,
                          collapsed = F,
                          title = 'Download',
                          p('Visualize ou faça o download do modelo no DropBox'),
                          a(h4('Leia', class = 'btn btn-default action-button',
                               style = "fontweight:600"),
                            target = '_blank', href = paste0('https://www.dropbox.com','/s/8hj1llpju5h9lo9/DSGE.pdf?dl=0')))
                    ))

info <- tabItem(tabName = 'general',
                info1,
                info2,
                info3)

#### Structure ####

sidebar <- dashboardSidebar(
  menu
  )
  

body <- dashboardBody(tabItems(
  info,
  graph,
  download
))

header <- dashboardHeader(title = 'DSGE Model')
#### Structure ####

shinyUI(
  dashboardPage(header = header,
                body = body,
                sidebar = sidebar)
)
