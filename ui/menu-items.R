# Menu Items

menu <-  sidebarMenu(
  menuItem(enc2utf8('Informações'), tabName = 'general', icon = icon('dashboard')),
  menuItem(text = 'Download', tabName = 'download'),
  menuItem(text = 'Projete o Modelo', tabName = 'model')
)
