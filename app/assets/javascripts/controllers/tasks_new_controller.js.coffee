# for more details see: http://emberjs.com/guides/controllers/

LikeTrello.TasksNewController = Ember.ObjectController.extend({
  save: ->
    @get('store').commit()

  cancel: ->
    @get('content').deleteRecord()
    @get('store').transaction().rollback()
    @transitionToRoute('tasks')

  transitionAfterSave: ( ->
    # when creating new records, it's necessary to wait for the record to be assigned
    # an id before we can transition to its route (which depends on its id)
    @transitionToRoute('task', @get('content')) if @get('content.id')
  ).observes('content.id')
})

