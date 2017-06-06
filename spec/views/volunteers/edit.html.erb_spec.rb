require 'rails_helper'

RSpec.describe "volunteers/edit", type: :view do
  before(:each) do
    @volunteer = assign(:volunteer, Volunteer.create!(
      :name => "MyString",
      :age => 1,
      :city => nil,
      :user => nil
    ))
  end

  it "renders the edit volunteer form" do
    render

    assert_select "form[action=?][method=?]", volunteer_path(@volunteer), "post" do

      assert_select "input#volunteer_name[name=?]", "volunteer[name]"

      assert_select "input#volunteer_age[name=?]", "volunteer[age]"

      assert_select "input#volunteer_city_id[name=?]", "volunteer[city_id]"

      assert_select "input#volunteer_user_id[name=?]", "volunteer[user_id]"
    end
  end
end
