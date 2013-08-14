# For more information see: http://emberjs.com/guides/routing/

LikeTrello.TasksRoute = Ember.Route.extend({
  model: ->
    LikeTrello.Task.find()
})
