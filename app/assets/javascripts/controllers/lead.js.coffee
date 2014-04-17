App.LeadController = Ember.ObjectController.extend

  isEditing: false

  showUnsaved: ( ->
    @get('isDirty') and !@get('isSaving')
  ).property('isDirty', 'isSaving')

  actions:

    saveChanges: -> @get('model').save()
