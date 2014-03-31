require 'spec_helper'
require 'capybara/rspec'
require_relative '../product_app'
Capybara.app = ProductApp

feature "User can manage products" do
  scenario "user sees welcome message on homepage" do
    visit ('/')
    expect(page).to have_content("Welcome!")
  end

  scenario "user can click on link to add a product" do
    visit ('/')
    click_on "Add a Product"
  end

  scenario "user can enter a new product" do
    visit ('/')
    click_on "Add a Product"
    fill_in "product", with: ("Sharks with lasers on their heads")
    click_on "Create Product"
    expect(page).to have_content("Sharks with lasers on their heads")
  end
end