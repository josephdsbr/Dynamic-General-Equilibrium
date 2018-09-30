## Model by hand

modelo <- tabItem(tabName = 'model',
                  fluidRow(
                    box(status = 'primary',
                        width = 12,
                        title = 'Script',
                        solidHeader = T,
                        collapsible = T,
                        h1('Desenvolva por si mesmo', color = 'red'),
                        p('Utilize-se de suas habilidades de Programação e refaça este modelo através do 
                          software de programação estatística conhecido como R.'),
                        htmlOutput('frame'))
                    )
                  )

