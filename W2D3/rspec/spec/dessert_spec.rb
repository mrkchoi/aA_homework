require 'rspec'
require 'dessert'
require 'chef'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  describe "#initialize" do
    subject(:dessert) {Dessert.new('cake', 10, chef)}
    it "sets a type" do
      expect(dessert.type).to eq('cake')
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    subject(:dessert2) {Dessert.new('cake', '10', chef)}


    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new('cake', '10', chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    subject(:dessert) {Dessert.new('cake', 10, chef)}

    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient('butter')
      expect(dessert.ingredients).to eq(['butter'])
    end
  end

  describe "#mix!" do
    subject(:dessert) {Dessert.new('cake', 10, chef)}

    before(:each) do
      dessert.add_ingredient('butter')
      dessert.add_ingredient('flour')
      dessert.add_ingredient('eggs')
    end
    
    it "shuffles the ingredient array" do
      dessert.mix!
      expect(dessert.ingredients).to_not eq(['flour', 'eggs', 'butter'])
    end
  end

  describe "#eat" do
    subject(:dessert) {Dessert.new('cake', 10, chef)}

    it "subtracts an amount from the quantity" do
      dessert.eat(1)
      expect(dessert.quantity).to eq(9)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{dessert.eat(100)}.to raise_error('not enough left!')
    end
  end

  describe "#serve" do
    subject(:dessert) {Dessert.new('cake', 10, chef)}
    let(:chef) {Chef.new('chefff')}
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to include('Chef cheff')
    end
  end

  describe "#make_more" do
    subject(:dessert) {Dessert.new('cake', 10, chef)}
    let(:chef) {Chef.new('cheff')}

    it "calls bake on the dessert's chef with the dessert passed in" do
      dessert.make_more
      expect(dessert.temp).to eq(400)
    end
  end
end
