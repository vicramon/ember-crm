App.LeadController = Ember.ObjectController.extend

  showUnsaved: ( ->
    @get('isDirty') and !@get('isSaving')
  ).property('isDirty', 'isSaving')

  actions:

    saveChanges: -> @get('model').save()
