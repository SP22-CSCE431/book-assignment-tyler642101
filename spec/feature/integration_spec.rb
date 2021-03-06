# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Some dude'
    fill_in 'Price', with: '7.99'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid author' do
    visit new_book_path
    fill_in 'Author', with: 'harry potter'
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid price' do
    visit new_book_path
    fill_in 'Price', with: '123'
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid date' do
    visit new_book_path
    fill_in 'Price', with: '123'
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'blank input' do
    visit new_book_path
    click_on 'Create Book'
    expect(page).to have_content("Title can't be blank")
  end
end