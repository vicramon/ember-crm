App.LeadRoute = Ember.Route.extend

  model: (params) -> @store.find 'lead', params.id

  # contextDidChange: -> @modelFor('lead').rollback()
