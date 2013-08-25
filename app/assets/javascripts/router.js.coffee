# For more information see: http://emberjs.com/guides/routing/

LikeTrello.Router.map ()->
  @route 'tasks', path: "/"
  @resource 'tasks', ()->
    @resource 'task', path: '/:task_id'
    @route 'new'

