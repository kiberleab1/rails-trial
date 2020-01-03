require 'rails_helper'
feature "Viewing Projects" do
  scenario "Listing all projects " do
    project=FactoryGirl.create(:project, name: "hdsdsds")
    visit '/'
    click_link 'hdsdsds'
    expect(page.current_url).to eql(projects_url(project))

  end
end
