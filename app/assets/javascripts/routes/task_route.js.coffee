# For more information see: http://emberjs.com/guides/routing/

LikeTrello.TaskRoute = Ember.Route.extend({
  model: (params)->
    setupController: ()->
      @controllerFor('topic').set('content', LikeTrello.Task.find(params.task_id));
})
