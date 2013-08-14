# For more information see: http://emberjs.com/guides/routing/

LikeTrello.Router.map ()->
  @route 'tasks', path: "/"
  @resource('tasks')

