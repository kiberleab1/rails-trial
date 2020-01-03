require 'rails_helper'
feature "editing_projects" do
  before do
    FactoryGirl.create(:project, name: "hdsdsds")
    visit "/"
    click_link "hdsdsds"
    click_link "Edit Project"
  end
  scenario "updating a project" do
    fill_in "Name", with: "Hello Update"
    click_button "Update Project"
    expect(page).to have_content("Project has been updated")
  end
  scenario "Updating a project with empty name" do

    fill_in "Name", with: ""
    click_button "Update Project"
    expect(page).to have_content("Project has Not been updated")
  end
end