## Table 1
## General informations

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


parms <- fluidRow(
  box(width = 12,
      sliderInput('beta',
                  'Elasticidade Utilidade-Consumo',
                  min = 0, max = 1, value = 0.5) ,
      sliderInput('A',
                  'Produtividade Total dos Fatores',
                  min = 0,
                  max = 2,
                  value = 1,
                  step = 0.25),
      sliderInput('K',
                  'Estoque de Capital Fisico',
                  min = 0,
                  max = 100,
                  value = 70,
                  step = 10),
      sliderInput('alpha',
                  'Elasticidade Produção-Capital',
                  min = 0,
                  max = 1,
                  value = 0.75,
                  step = 0.25)
      )
  )

bootstrap <- fluidRow(
  box(width = 12,
      title = 'jose',
      solidHeader = T,
      collapsible = T,
      HTML("<head>
           <script src= 'https://cdn.datacamp.com/datacamp-light-latest.min.js'></script>
           </head>"))
      )

  
info <- tabItem(tabName = 'general',
                box(width = 8,
                    info1,
                    info2,
                    info3),
                parms,
                bootstrap)