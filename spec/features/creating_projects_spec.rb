# frozen_string_literal: true
require 'rails_helper'

feature 'Creating projects' do
  before do
    visit '/'
    click_link "New Project"
  end
  scenario 'Can Create a Project' do
    fill_in 'Name', with: 'hdsdsds'
    fill_in 'Description', with: 'Hello World'
    click_button 'Create Project'
    expect(page).to have_content('Project Created Successfully')
  end
  scenario "Can not create a project without a name" do
    click_button "Create Project"
    expect(page).to have_content("Project has not been Created")
    expect(page).to have_content("Name can't be blank")
  end
end

