require 'rails_helper'

RSpec.describe "apartments/new", type: :view do
  before(:each) do
    assign(:apartment, Apartment.new(
      :address => "MyString",
      :price => 1.5,
      :description => "MyText"
    ))
  end

  it "renders new apartment form" do
    render

    assert_select "form[action=?][method=?]", apartments_path, "post" do

      assert_select "input#apartment_address[name=?]", "apartment[address]"

      assert_select "input#apartment_price[name=?]", "apartment[price]"

      assert_select "textarea#apartment_description[name=?]", "apartment[description]"
    end
  end
end
