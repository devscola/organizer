class Element
  attr_accessor :title
  attr_accessor :description
  attr_accessor :child

  def initialize(title)
    @title = title
  end
end

describe "Element" do
  let (:title) { "El libro de Camilin" }

  it "have a title" do
    element = Element.new(:title)

    expect(element.title).to eq(:title)
  end

  it "can have a description" do
    plot = "El mejor libro del mundo"

    element = Element.new(:title)
    element.description= plot

    expect(element.description).to eq(plot)
  end

  it "can have a child" do
    child_title = "Camilin audiobook"
    child_element = Element.new(child_title)
    element = Element.new(:title)

    element.child = child_element

    expect(element.child).to eq(child_element)
  end
end
