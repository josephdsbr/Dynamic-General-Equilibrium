## Model

h = 1

vals <- reactiveValues()
res <- reactiveValues()

observe({
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