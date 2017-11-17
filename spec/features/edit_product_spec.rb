require 'rails_helper'

describe "the process of editing a product" do
  it "edit a product " do
    product = Product.create(:name => "Spaghetti", :cost => 8, :country_origin => "Italy")
    visit product_path(product)
    click_on "Admin Edit"
    fill_in "Cost", :with => 7
    click_on "Update Product"
    expect(page).to have_content 7
  end
end
