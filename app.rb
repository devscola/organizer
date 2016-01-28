class Element
  attr_accessor :title
  attr_accessor :description
  attr_accessor :children

  def initialize(title)
    @title = title
  end

  def addChildren(child)
    children << child
  end

end

describe "Element" do
  let (:title) { "El libro de Camilin" }

  it "have a title" do
    element = Element.new(title)

    expect(element.title).to eq(title)
  end

  it "can have a description" do
    plot = "El mejor libro del mundo"

    element = Element.new(title)
    element.description= plot

    expect(element.description).to eq(plot)
  end

  it "can have a child" do
    child_title = "Camilin audiobook"
    child_element = Element.new(child_title)
    element = Element.new(title)

    element.children = child_element

    expect(element.children).to eq(child_element)
  end

  it "can have many children" do
    child1_title = "Camilin audiobook"
    child2_title = "Camilin photos"
    child1 = Element.new(child1)
    child2 = Element.new(child2)
    element = Element.new(title)
    children = [child1, child2]

    element.children = children

    expect(element.children).to eq(children)
  end

  it "can add a children" do
    child1_title = "Camilin audiobook"
    child2_title = "Camilin photos"
    child1 = Element.new(child1)
    child2 = Element.new(child2)
    element = Element.new(title)
    children = [child1, child2]
    element.children = children
    child3_title = "Camilin poster"
    child3 = Element.new(child3)
    new_children = children << child3

    element.addChildren(child3)

    expect(element.children).to eq(new_children)
  end
end
