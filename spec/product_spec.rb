require 'spec_helper'
require 'capybara/rspec'
require_relative '../product_app'
Capybara.app = ProductApp

feature "User can manage products" do
  scenario "user sees welcome message on homepage" do
    visit ('/')
    expect(page).to have_content("Welcome!")
  end
end