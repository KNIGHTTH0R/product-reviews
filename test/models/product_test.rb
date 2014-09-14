require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products
  # test "the truth" do
  #   assert true
  # end
  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:brand].any?
    assert product.errors[:name].any?
    assert product.errors[:description].any?
    assert product.errors[:image_url].any?
    assert product.errors[:price].any?
    assert product.errors[:category].any?
  end
  
  test "product price must be positive" do
    product = Product.new(brand: "A New Brand",
                          name: "Cool Product",
                          description: "yyy",
                          image_url: "zzz.jpg",
                          category: "Lips")
    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]
    
    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]
    
    product.price = 1
    assert product.valid?
  end
  
  def new_product(image_url)
    Product.new(brand: "A New Brand",
                name: "A Name",
                description: "yyy",
                image_url: image_url,
                price: 1,
                category: "Skin")
  end
  test "image url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    ok.each do |name|
      assert new_product(name).valid?, "#{name} should be valid"
    end
    bad.each do |name|
      assert new_product(name).invalid?, "#{name} shouldn't be valid"
    end
  end
  
  test "product is not valid without a unique name within a brand" do
    product = Product.new(brand: products(:mac_lipstick).brand,
                          name: products(:mac_lipstick).name,
                          description: "yyy",
                          image_url: "fred.gif",
                          price: 1,
                          category: "Lips")
    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:name]
  end
     
end