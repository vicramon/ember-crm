App.LeadsNewRoute = Ember.Route.extend

  setupController: (controller) ->
    controller.set 'fields', {}
    controller.set 'showError', false
