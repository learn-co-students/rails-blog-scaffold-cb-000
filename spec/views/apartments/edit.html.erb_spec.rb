require 'rails_helper'

RSpec.describe "apartments/edit", type: :view do
  before(:each) do
    @apartment = assign(:apartment, Apartment.create!(
      :address => "MyString",
      :price => 1.5,
      :description => "MyText"
    ))
  end

  it "renders the edit apartment form" do
    render

    assert_select "form[action=?][method=?]", apartment_path(@apartment), "post" do

      assert_select "input#apartment_address[name=?]", "apartment[address]"

      assert_select "input#apartment_price[name=?]", "apartment[price]"

      assert_select "textarea#apartment_description[name=?]", "apartment[description]"
    end
  end
end
