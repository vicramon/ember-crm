App.LeadEditRoute = Ember.Route.extend

  activate:   -> @controllerFor('lead').set 'isEditing', true
  deactivate: -> @controllerFor('lead').set 'isEditing', false
