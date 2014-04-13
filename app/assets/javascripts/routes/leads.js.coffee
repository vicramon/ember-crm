App.LeadsRoute = Ember.Route.extend

  model: -> @store.findAll 'lead'
