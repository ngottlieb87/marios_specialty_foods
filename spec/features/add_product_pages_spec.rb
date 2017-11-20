require 'rails_helper'

describe "will add a new product and display it " do
  it "adds a new product" do
    visit products_path
    click_link 'Add Product'
    fill_in 'Name', :with => "Cheeseburger"
    fill_in 'Cost', :with => "5"
    fill_in 'Country origin', :with => "China"
    click_on 'Create Product'
    expect(page).to have_content 'Product successfully added'
  end

  it "displays errors when no name is entered" do
    visit products_path
    click_link 'Add Product'
    fill_in 'Name', :with => " "
    fill_in 'Cost', :with => "5"
    fill_in 'Country origin', :with => "China"
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end

  it "displays errors when no rating is entered" do
    visit products_path
    click_link 'Add Product'
    fill_in 'Name', :with => "Cheeseburger"
    fill_in 'Cost', :with => " "
    fill_in 'Country origin', :with => "China"
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end

  it "displays errors when no country of origin is entered" do
    visit products_path
    click_link 'Add Product'
    fill_in 'Name', :with => "Cheeseburger"
    fill_in 'Cost', :with => "4"
    fill_in 'Country origin', :with => " "
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
