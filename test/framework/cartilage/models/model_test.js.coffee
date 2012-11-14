
module "Cartilage.Model"

  setup: ->

test "should define accessors for model attributes during initialize", ->

  class TestModel extends Cartilage.Model
  testModel = new TestModel({ firstProperty: "foo", secondProperty: "bar" })

  equal testModel.firstProperty, "foo", "firstProperty should equal 'foo'"
  equal testModel.secondProperty, "bar", "secondProperty should equal 'bar'"

test "should define setters for model attributes during initialize", ->

  class TestModel extends Cartilage.Model
  testModel = new TestModel({ firstProperty: "foo", secondProperty: "bar" })
  testModel.firstProperty = "baz"
  testModel.secondProperty = "bong"

  equal testModel.firstProperty, "baz", "firstProperty should equal 'baz'"
  equal testModel.secondProperty, "bong", "secondProperty should equal 'bong'"
