# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Title', with: 'harry potter 1'
      fill_in 'Author', with: 'Author 1'

      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('harry potter')
    end
  end

  RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Title', with: 'harry potter 2'
      fill_in 'Author', with: 'Author 2'
      fill_in 'Price', with: '993'


      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('harry potter')
    end
  end

  RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Title', with: 'harry potter 3'
      fill_in 'Author', with: 'Author 3'
      fill_in 'Price', with: '993'
    #   fill_in 'PublishedDate', with: "08/08/2001"

      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('harry potter')
    end
  end

  RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Title', with: 'harry potter 3'
      fill_in 'Author', with: 'Author 3'
      fill_in 'Price', with: 'DSDSDSDSDS'
    #   fill_in 'PublishedDate', with: "08/08/2001"

      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('harry potter')
    end
  end
