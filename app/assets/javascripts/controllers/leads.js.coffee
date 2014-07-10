App.LeadsController = Ember.ArrayController.extend
  sortProperties: ['firstName', 'lastName']

  leads: ( ->
    if @get('search') then @get('searchedLeads') else @filterBy('isNew', false)
  ).property('search', 'searchedLeads', 'content.@each.isNew')

  searchedLeads: ( ->
    search = @get('search').toLowerCase()
    @filter (lead) => lead.get('fullName').toLowerCase().indexOf(search) != -1
  ).property('search', '@each.fullName')
