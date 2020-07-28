require 'rails_helper'

RSpec.describe "ユーザーログイン機能", type: :system do
  it 'ログインしていない場合、サインページに移動する' do
    # トップページに遷移する
    visit root_path
    # ログインしていない場合、サインインページに遷移することを期待する
    expect(current_path).to eq new_user_session_path
  end

  it 'ログインに成功し、ルートパスに遷移する' do
    # 予め、ユーザーをDBに保存する
    @user = FactoryBot.create(:user)
    # ログインする
    sign_in(@user.email, @user.password)
    # ルートページに遷移することを期待する
    expect(current_path).to eq root_path
  end
  it 'ログインに失敗し、再びサインインページに戻ってくる' do
    # 予め、ユーザーをDBに保存する
    @user = FactoryBot.create(:user)
    # ログインする
    sign_in("test", "example@gmail.com")
    # サインインページに遷移していることを期待する
    expect(current_path).to eq new_user_session_path
  end
end