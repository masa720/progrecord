require 'rails_helper'

feature 'customer', type: :feature do
  let(:user) { create(:user) }

  scenario '取引先の登録' do
    #ログイン
    visit root_path
    visit new_user_session_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    find('input[name="commit"]').click
    expect(current_path).to eq root_path
    
    #取引先登録
    expect {
      visit new_customer_path
      expect(current_path).to eq new_customer_path
      fill_in 'customer[name]', with: 'hoge'
      select '1', from: 'customer[category_id]'
      fill_in 'customer[person]', with: 'hoge'
      select '担当', from: 'customer[position]'
      fill_in 'customer[tel]', with: '0120123456'
      fill_in 'customer[mobile]', with: '09012345678'
      fill_in 'customer[fax]', with: '012345678'
      fill_in 'customer[email]', with: 'test@com'
      fill_in 'customer[product]', with: 'hoge'
      find('input[type="submit"]').click
    }.to change(Customer, :count).by(1)
  end
end