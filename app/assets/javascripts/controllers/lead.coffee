App.LeadController = Ember.Controller.extend

  isEditing: false

  showUnsavedMessage: ( ->
    @get('model.hasDirtyAttributes') and !@get('model.isSaving')
  ).property('model.hasDirtyAttributes', 'model.isSaving')

  leadStatues: App.Lead.STATUSES

  actions:

    saveChanges: ->
      if @get('model.hasDirtyAttributes')
        @get('model').save()

    destroy: ->
      @get('model').destroyRecord().then =>
        @transitionToRoute 'leads'
