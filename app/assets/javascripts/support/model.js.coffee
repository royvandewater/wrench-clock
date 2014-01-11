Backbone.Model.prototype.has_many = (relationship_name) ->
  @[relationship_name] = new window[_.classify relationship_name] @get relationship_name
  @on "change:#{relationship_name}", => @[relationship_name].set @get relationship_name
