require 'rails_helper'

RSpec.describe "volunteers/index", type: :view do
  before(:each) do
    assign(:volunteers, [
      Volunteer.create!(
        :name => "Name",
        :age => 2,
        :city => nil,
        :user => nil
      ),
      Volunteer.create!(
        :name => "Name",
        :age => 2,
        :city => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of volunteers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
