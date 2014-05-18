require 'spec_helper'

feature 'user can crud donation form' do
  scenario 'user can submit donation form' do
    visit '/items/new'
    fill_in 'item[source]', with: 'Individual'
    fill_in 'item[category]', with: 'toy'
    fill_in 'item[location]', with: 'storage loc 41'
    click_on 'Create Item'
    expect(page).to have_content 'Source: Individual'
  end

  scenario 'User can search for item' do
    visit '/items/new'
    fill_in 'item[source]', with: 'Family'
    fill_in 'item[category]', with: 'toy'
    fill_in 'item[location]', with: '41'
    click_on 'Create Item'
    visit '/items/new'
    fill_in 'item[source]', with: 'Individual'
    fill_in 'item[category]', with: 'toy'
    fill_in 'item[location]', with: '12'
    click_on 'Create Item'
    visit '/items/new'
    fill_in 'item[source]', with: 'Church'
    fill_in 'item[category]', with: 'food'
    fill_in 'item[location]', with: '24'
    click_on 'Create Item'


    visit '/items'
    fill_in 'search', with: '24'
    click_on 'Search'
    expect(page).to have_content 'Church'
    expect(page).to_not have_content 'Family'

  end
end


