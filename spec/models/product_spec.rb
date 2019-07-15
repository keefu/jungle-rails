require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:category) {Category.new(name: 'Sports')}
  let!(:product) {Product.new(name: 'Bicyle', description: 'Best bike ever!', price_cents: 150000, quantity: 5, category: category)} 
  describe 'Validations' do
    it 'should be valid with all attributes' do
      product.valid?
      expect(product).to be_valid
    end
    it 'should have a valid name' do 
      product.name = nil
      product.valid?
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Name can't be blank") 
    end
    it 'should have a valid price' do 
      product.price_cents = nil
      product.valid?
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Price can't be blank") 
    end
    it 'should have a valid quantity' do 
      product.quantity = nil
      product.valid?
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Quantity can't be blank") 
    end
    it 'should have a valid category' do 
      product.category = nil
      product.valid?
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Category can't be blank") 
    end
  end
end
