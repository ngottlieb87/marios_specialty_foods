require 'rails_helper'

describe "will add a new review and display it " do
  it "adds a review product" do
    product = Product.create(:name => "Spaghetti", :cost => 8, :country_origin => "Italy")
    visit product_path(product)
    click_link 'Write A Review'
    fill_in 'Author', :with => "Craig"
    fill_in 'Rating', :with => "5"
    fill_in 'Content', :with => "The food arrived promptly and the directions were easy to follow."
    click_on 'Create Review'
    expect(page).to have_content 'Review successfully added!'
  end

  it "errors if no author is inputted" do
    product = Product.create(:name => "Spaghetti", :cost => 8, :country_origin => "Italy")
    visit product_path(product)
    click_link 'Write A Review'
    fill_in 'Author', :with => " "
    fill_in 'Rating', :with => " 10 "
    fill_in 'Content', :with => "food"
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end
end
