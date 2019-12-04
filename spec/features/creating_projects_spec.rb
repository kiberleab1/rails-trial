# frozen_string_literal: true
require 'rails_helper'

feature 'Creating projects' do
  scenario 'Can Create a Project' do
    visit '/'
    click_link "New Project"
    fill_in 'Name', with: 'hdsdsds'
    fill_in 'Description', with: 'Hello World'
    click_button 'Create Project'
    expect(page).to have_content('Project Created Successfully')
  end
end
