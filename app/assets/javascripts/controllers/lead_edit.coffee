App.LeadEditController = Ember.Controller.extend

  actions:

    cancel: ->
      @get('model').rollbackAttributes()
      @transitionToRoute 'lead'

    saveChanges: ->
      @get('model').save().then =>
        @transitionToRoute 'lead'
