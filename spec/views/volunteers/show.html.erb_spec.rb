require 'rails_helper'

RSpec.describe "volunteers/show", type: :view do
  before(:each) do
    @volunteer = assign(:volunteer, Volunteer.create!(
      :name => "Name",
      :age => 2,
      :city => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
