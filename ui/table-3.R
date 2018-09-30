## Model by hand

modelo <- tabItem(tabName = 'model',
                  fluidRow(
                    box(status = 'primary',
                        width = 8,
                        title = 'Script',
                        solidHeader = T,
                        collapsible = T,
                        h1('Desenvolva por si mesmo', color = 'red'),
                        p('Utilize-se de suas habilidades de Programação e refaça este modelo através do 
                          software de programação estatística conhecido como R.
                                   Considere como dadas as seguintes informações: 
                                   1. O total de horas disponíveis no dia é um numerário 
                                   2. A elasticidade entre consumo e lazer é 0.7 
                                   3. O nível de preços está estabilizado em 1 
                                   4. A quantidade de capital físico é dado e igual a 100
                                   5. A elasticidade da produção em relação ao capital físico é 0.8'  ),
                        htmlOutput('shiny'))
                    )
                  )

