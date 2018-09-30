## Download table

download <- tabItem(tabName = 'download',
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
