App.ApplicationAdapter = DS.ActiveModelAdapter.extend
  namespace: 'api/v1'
  shouldReloadAll: -> true
  shouldBackgroundReloadRecord: -> false