require 'rails_helper'

describe "will add a new product and display it " do
  it "adds a new product" do
    visit products_path
    click_link 'Add Product'
    fill_in 'Name', :with => "Cheese Burger"
    fill_in 'Cost', :with => "5"
    fill_in 'Country origin', :with => "China"
    click_on 'Create Product'
    expect(page).to have_content 'product successfully added'
  end
end
