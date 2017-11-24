require 'rails_helper'

describe "will test delete path" do
  it "deletes a product" do #currently only tests path
    product = Product.create(:name => "Spaghetti", :cost => 8, :country_origin => "Italy")
    visit product_path(product)
    delete_link = find_link 'Admin Product Delete', href: product_path(product)
    expect(delete_link['data-confirm']).to eq 'You sure?'
  end
end
