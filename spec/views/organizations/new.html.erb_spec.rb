require 'rails_helper'

RSpec.describe "organizations/new", type: :view do
  before(:each) do
    assign(:organization, Organization.new(
      :name => "MyString",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders new organization form" do
    render

    assert_select "form[action=?][method=?]", organizations_path, "post" do

      assert_select "input#organization_name[name=?]", "organization[name]"

      assert_select "textarea#organization_description[name=?]", "organization[description]"

      assert_select "input#organization_user_id[name=?]", "organization[user_id]"
    end
  end
end
