# Menu Items

menu <-  sidebarMenu(
  menuItem('Estatisticas', tabName = 'general', icon = icon('dashboard')),
  menuItem(text = 'Download', tabName = 'download'),
  menuItem(text = 'Projete o Modelo', tabName = 'model')
)
