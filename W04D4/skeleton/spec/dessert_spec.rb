require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:cupcake) {Dessert.new('cupcake',10,1)}

  describe "#initialize" do
    it "sets a type"
      expect(cupcake.type).to eq('cupcake')
    it "sets a quantity"
     # expect(quantity.type).to eq(Integer)
    it "starts ingredients as an empty array"
     # expect(ingredients.type).to eq([])
    it "raises an argument error when given a non-integer quantity"
     # expect {Dessert.new('cupcake',10,1.0)}.to_raise_error
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
