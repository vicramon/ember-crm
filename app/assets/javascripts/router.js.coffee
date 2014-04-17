App.Router.reopen
  rootURL: '/'
  location: 'auto'

App.Router.map ->
  @resource 'leads', path: '/', ->
    @resource 'lead', path: 'leads/:id'
    @resource 'editLead', path: 'leads/:id/edit'
