App.Router.reopen
  rootURL: '/'
  location: 'auto'

App.Router.map ->
  @resource 'leads', path: '/'
