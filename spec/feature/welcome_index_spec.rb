require 'rails_helper'

RSpec.describe 'Welcome Index', type: :feature do
  it 'Should search house members' do
    visit '/'

    select('Gryffindor', from: :house)
    click_on 'Search For Members'

    expect(current_path).to eq('/search')

    expect(page).to have_content('Total Number of Members 41')

  end
end