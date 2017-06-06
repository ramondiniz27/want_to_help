require 'rails_helper'

RSpec.describe "volunteers/new", type: :view do
  before(:each) do
    assign(:volunteer, Volunteer.new(
      :name => "MyString",
      :age => 1,
      :city => nil,
      :user => nil
    ))
  end

  it "renders new volunteer form" do
    render

    assert_select "form[action=?][method=?]", volunteers_path, "post" do

      assert_select "input#volunteer_name[name=?]", "volunteer[name]"

      assert_select "input#volunteer_age[name=?]", "volunteer[age]"

      assert_select "input#volunteer_city_id[name=?]", "volunteer[city_id]"

      assert_select "input#volunteer_user_id[name=?]", "volunteer[user_id]"
    end
  end
end
