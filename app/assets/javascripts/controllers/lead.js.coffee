App.LeadController = Ember.ObjectController.extend

  isEditing: false

  showUnsavedMessage: ( ->
    @get('isDirty') and !@get('isSaving')
  ).property('isDirty', 'isSaving')

  actions:

    saveChanges: -> @get('model').save()

    delete: ->
      @get('model').destroyRecord().then =>
        @transitionToRoute 'leads'
