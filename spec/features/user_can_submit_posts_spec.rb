require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  #test may need to change
  xscenario "Can submit posts and view them" do
    User.create(name: "Gina", password: "123456", email: "gina@example.com")
    visit "/sessions/new"
    fill_in "session[name]", with: "Gina"
    fill_in "session[password]", with: "123456"
    click_on "Log in"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
  end

  xscenario "User can make a new post from their own wall" do
    User.create(name: "Gina", password: "123456", email: "gina@example.com")
    visit "/sessions/new"
    fill_in "session[name]", with: "Gina"
    fill_in "session[password]", with: "123456"
    click_on "Log in"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
  end

end
