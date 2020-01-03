require 'rails_helper'
feature "deleting projects" do
  scenario "delete project" do
    FactoryGirl.create(:project , name: "hsdsds")
    visit "/"
    click_link "hsdsds"
    click_link "Delete Project"
    expect(page).to have_content("Project has been Destroyed")
    visit "/"
    expect(page).to have_no_content("hsdsds")
  end
end
