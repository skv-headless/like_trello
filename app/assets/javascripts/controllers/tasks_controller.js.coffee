# for more details see: http://emberjs.com/guides/controllers/

LikeTrello.TasksController = Ember.ArrayController.extend({
  newTasks: (->
    @filterTasks('backlog')
  ).property("arrangedContent.@each")

  specificationTasks: (->
    @filterTasks('specification')
  ).property("arrangedContent.@each")

  inWorkTasks: (->
    @filterTasks('in_work')
  ).property("arrangedContent.@each")

  testingTasks: (->
    @filterTasks('testing')
  ).property("arrangedContent.@each")

  finishedTasks: (->
    @filterTasks('finished')
  ).property("arrangedContent.@each")

  filterTasks: (field)->
    content = @get("arrangedContent")
    content.filter (item, index) ->
      (item.get("state") == field)

  delete:(task)->
    task.deleteRecord()
    @get('store').commit()
    @transitionToRoute('tasks')
})

