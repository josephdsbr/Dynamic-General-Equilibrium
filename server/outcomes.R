### outcomes

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

output$frame <- renderUI({
  test <- "https://rdrr.io/snippets/embed/?code=b%20%3C-%200.5%0Ap%20%3C-%201%0AA%20%3C-%2010%0AK%20%3C-%2050%0Aalpha%20%3C-%200.9%0Ah%20%3C-%201%0A%0AConsumo%20%3C-%20(b*h)%5E(1%20-%20alpha)*A*K%5E(alpha)%0ALazer%20%3C-%20(1%20-%20b)*h%0ATrabalho%20%3C-%20b*h%0ASalario%20%3C-%20((1%20-%20alpha)*A*K**(alpha))%2F((h*b)**alpha)%0ALambda%20%3C-%20(b**alpha)%2F((1%20-%20alpha)*A*K**(alpha)*h**(1%20-%20alpha))%20%0AProducao%20%3C-%20A*K**alpha*Trabalho**(1-alpha)%0ALucro%20%3C-%20Producao%20-%20Salario*Trabalho%20%0ADespesas%20%3C-%20Salario*Trabalho%0AUtilidade%20%3C-%20exp(b*log(Consumo)%20%2B%20(1%20-%20b)*log(Lazer))%0A%0Adf%20%3C-%20data.frame(cbind(Consumo%2C%20Lazer%2C%20Trabalho%2C%20Salario%2C%20Lambda%2C%20Producao%2C%20Lucro%2C%20Despesas%2C%20Utilidade))%0A%0Aknitr%3A%3Akable(df)"
  my_test <- tags$iframe(src=test, height=800, width=1200)
  print(my_test)
  my_test
})


output$shiny <- renderUI({
  my_test <- tags$script(scr = '//cdn.datacamp.com/dcl-react.js.gz',
              type = 'text/javascript')
  print(my_test)
  my_test
})
