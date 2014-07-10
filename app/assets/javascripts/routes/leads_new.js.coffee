App.LeadsNewRoute = Ember.Route.extend

  setupController: (controller) ->
    controller.set 'model', @store.createRecord 'lead'
    controller.set 'showError', false

  deactivate: ->
    model = @controllerFor('leadsNew').get('model')
    model.deleteRecord() if model.get('isNew')
