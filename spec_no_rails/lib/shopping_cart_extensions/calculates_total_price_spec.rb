require 'shopping_cart_extensions/calculates_total_price'


class DummyCartWithProducts
  include ShoppingCartExtensions::CalculatesTotalPrice
end

describe "Calculating Total Price" do
  it "returns 50% of the total prices" do
    cart = DummyCartWithProducts.new
    products = [stub(price: 20), stub(price: 10)]
    cart.stub(:products) { products }
    cart.total_price.should == 15
  end
end
