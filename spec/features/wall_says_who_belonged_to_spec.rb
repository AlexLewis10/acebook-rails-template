require 'rails_helper'

RSpec.feature "Wall says who it belongs to", type: :feature do
  scenario "Walls gives the name of the user it belongs to" do
    @gina = User.create(name: "Gina", password: "123456", email: "gina@example.com")
    @alex = User.create(name: "Alex", password: "abcdef", email: "alex@example.com")
    log_in_gina
    click_link "New post"
    fill_in "Message", with: "Hello!!!"
    click_on "Submit"
    click_on "Log out"
    fill_in "session[name]", with: "Alex"
    fill_in "session[password]", with: "abcdef"
    click_on "Log in"
    click_on "Home"
    click_on "@Gina"
    expect(page).to have_content("Gina's Wall")   
  end
end
