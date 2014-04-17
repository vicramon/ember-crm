App.EditLeadController = Ember.ObjectController.extend

  returnToLead: -> @transitionToRoute 'lead', @get('model')

  actions:

    cancel: ->
      @get('model').rollback()
      @returnToLead()

    saveChanges: ->
      @get('model').save().then =>
        @returnToLead()
