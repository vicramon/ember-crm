App.LeadsNewController = Ember.ObjectController.extend

  actions:

    createLead: ->
      if @get('model.isValid')
        @get('model').save().then =>
          @transitionToRoute 'lead', @get('model')
      else
        @set 'showError', true
