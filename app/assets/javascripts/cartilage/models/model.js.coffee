
class window.Cartilage.Model extends Backbone.Model

  initialize: (options = {}) ->

    # Initialize the Model
    super(options)

    # Initialize Properties
    @initializeProperties()

  initializeProperties: ->
    _.each Object.getOwnPropertyNames(@attributes), (key) =>
      unless @constructor.prototype.hasOwnProperty(_.camelize(key))
        Object.defineProperty @, _.camelize(key),
          get: =>
            @get(key)
          set: (value) =>
            @set(key, value)
