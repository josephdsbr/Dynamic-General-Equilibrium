library(shiny)
# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
  
  #### Pre-Processing ####
  
  h = 1
  
  vals <- reactiveValues()
  res <- reactiveValues()
  
  observe({
    vals$b <- input$beta  
    vals$b <- input$beta
    vals$p <- input$p
    vals$A <- input$A
    vals$K <- input$K
    vals$alpha <- input$alpha
    
    res$Consumo <- (vals$b*h)^(1 - vals$alpha)*vals$A*vals$K^(vals$alpha)
    res$Lazer <- (1 - vals$b)*h
    res$Trabalho <- vals$b*h
    res$Salario <- ((1 - vals$alpha)*vals$A*vals$K**(vals$alpha))/((h*vals$b)**vals$alpha)
    res$Lambda <- (vals$b**vals$alpha)/((1 - vals$alpha)*vals$A*vals$K**(vals$alpha)*h**(1 - vals$alpha)) 
    res$Producao <- vals$A*vals$K**vals$alpha*res$Trabalho**(1-vals$alpha)
    res$Lucro <- res$Producao - res$Salario*res$Trabalho 
    res$Despesas <- res$Salario*res$Trabalho
    res$Utilidade <- exp(vals$b*log(res$Consumo) + (1 - vals$b)*log(res$Lazer))
    })


  ## Processing
  
  output$graph <- renderPlotly({
  
  ## Plot
  
  plot_ly(x = 'Consumo', y = c(res$Consumo), type = 'bar', name = 'Consumo') %>%
    add_trace(x = 'Salario', y = res$Salario, name = 'Salarios') %>%
    layout(yaxis = list(title = '', barmode = 'stack', range = c(0, 200)),
           xaxis = list(title = 'Valores',showticklabels = FALSE))
  })
  
  output$graph2 <- renderPlotly({
    plot_ly(x = 'Utilidade', y = res$Utilidade, type = 'bar', name = 'Utilidade') %>%
      layout(yaxis = list(title = '', barmode = 'stack', range = c(0, 10)),
             xaxis = list(title = 'Valores',showticklabels = FALSE))
  })
  
  output$graph3 <- renderPlotly({
    plot_ly(x = 'Trabalho', y = round(res$Trabalho*100,2), type = 'bar', name = 'Trabalho (%)') %>%
      add_trace(x = 'Lazer', y = round(res$Lazer*100,2), type = 'bar', name = 'Lazer (&)')%>%
      layout(yaxis = list(title = '% Horas destinadas', barmode = 'stack', range = c(0, 100)),
             xaxis = list(title = 'Valores',showticklabels = FALSE))
  })
  
  output$graph1 <- renderPlotly({
    plot_ly(x = 'Lucro', y = res$Lucro, type = 'bar', name = 'Lucro') %>%
      add_trace(x = 'Producao', y = res$Producao, name = 'Producao') %>%
      add_trace(x = 'Gastos', y = res$Salario*res$Trabalho, name = 'Salarios Totais') %>%
      layout(yaxis = list(title = '', barmode = 'stack', range = c(0, ifelse(res$Lucro < 200, 200, 400))),
             xaxis = list(title = 'Valores',showticklabels = FALSE))
  })
  
  output$Producao <- renderInfoBox({
    infoBox('Producao', round(res$Producao,2), fill = T, icon = icon('user', lib = 'glyphicon'), color = 'red')
  })
  
  output$Consumo <- renderInfoBox({
    infoBox('Consumo', round(res$Consumo,2), fill = T, icon = icon('thumbs-up', lib = 'glyphicon'))
  })
  
  output$Lazer <- renderInfoBox({
    infoBox('Lazer', paste(round(res$Lazer*100, 2),'%'), fill = T, color = 'green', icon = icon('plane', lib = 'glyphicon'))
  })
  
  output$Trabalho <- renderInfoBox({
    infoBox('Trabalho', paste(round(res$Trabalho*100,2), '%'), fill = T, color = 'green', icon = icon('briefcase', lib = 'glyphicon'))
  })
  
  output$Salario <- renderInfoBox({
    infoBox('Salario', round(res$Salario, 2), fill = T, icon = icon('dollar'))
  })
  
  output$Lambda <- renderInfoBox({
    infoBox('Lambda', round(res$Lambda,2), fill = T)
  })
  
  output$Lucro <- renderInfoBox({
    infoBox('Lucro', round(res$Lucro, 2), fill = T, icon = icon('dollar'), color = 'red')
  })
  
  output$Despesas <- renderInfoBox({
    infoBox('Despesas', round(res$Despesas,2), fill = T, icon = icon('modal-window', lib = 'glyphicon'), color = 'red')
  })
  
})
