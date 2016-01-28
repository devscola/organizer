class Element
  attr_accessor :title
  attr_accessor :description

  def initialize(title)
    @title = title
    @description = nil
  end
end

describe "Element" do
  it "have a title" do
    title = "El libro de Camilin"

    element = Element.new(title)

    expect(element.title).to eq(title)
  end

  it "have a description" do
    title = "El libro de Camilin"
    plot = "El mejor libro del mundo"

    element = Element.new(title)
    element.description= plot

    expect(element.description).to eq(plot)
  end
end
