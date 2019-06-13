
feature 'Enter names of players' do
  scenario 'After names are typed, they should be able to see them' do
    visit('/')
    fill_in :player_1_name, with: "Naruto"
    fill_in :player_2_name, with: "Saske"
    click_button 'Submit'
    expect(page).to have_content "Naruto vs Saske"
  end
end
