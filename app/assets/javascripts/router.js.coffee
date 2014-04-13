App.Router.reopen
  location: 'auto'

App.Router.map ->
  @resource 'leads', path: '/'
