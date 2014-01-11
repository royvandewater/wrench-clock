Backbone.Router.prototype.render = (view) ->
  $('#main-content').html view.render().$el
