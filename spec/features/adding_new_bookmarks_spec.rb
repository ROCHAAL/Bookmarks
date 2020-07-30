feature 'Adding a new bookmark' do
  scenario 'A user can add a new bookmark to the list' do
    visit '/bookmarks'
    fill_in('address', with: "http://www.github.com")
    click_button('Submit')
    expect(page).to have_content("http://www.github.com")
  end
end
