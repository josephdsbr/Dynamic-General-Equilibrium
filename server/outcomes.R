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

output$shiny <- renderUI({
  my_test <- includeHTML(enc2native('js-script/datacamp-script.html'))
  print(my_test)
  my_test
})
