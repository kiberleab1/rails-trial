require 'rails_helper'

feature 'creating_tickets' do
  before() do
    FactoryGirl.create(:project,name: "Internet Explorer" )
    visit '/'
    click_link "Internet Explorer"
    click_link "New Ticket"
  end
  scenario "creating_ticket" do
    fill_in "Title", with: "plooop"
    fill_in "Description", with: "Bullshitllllll"
    click_button "Create New Ticket"
    expect(page).to have_content("Ticket has been created")
  end
  scenario "Creating a ticket without valid attribuites fails" do
    click_button "Create New Ticket"
    expect(page).to have_content("Ticket has not been created")
    expect(page).to have_content("Title can't be blank")
    expect(page).to have_content("Description can't be blank")
  end
  scenario "Description must be no longer that 10 characters" do
    fill_in "Title", with: "plooop"
    fill_in "Description", with: "Bullshit"
    click_button "Create New Ticket"
    expect(page).to have_content("Ticket has not been created")

    expect(page).to have_content("Description is too short")
  end
end
