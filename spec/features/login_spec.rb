
feature 'Login' do
  scenario 'Enter name and save to game' do
    visit('/')
    fill in :name, with: 'Kie'
    click_button 'Submit'
    expect(page).to have_content 'Kie'
end
