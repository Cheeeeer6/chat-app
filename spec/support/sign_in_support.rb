module SignInSupport
  def sign_in(email, password)
    # サインインページへ移動する
    visit new_user_session_path
    # ログインしていない場合、サインインページに遷移することを期待する
    expect(current_path).to eq new_user_session_path
    # すでに保存されているユーザーのemailとpasswordを入力する
    fill_in "user_email", with: email
    fill_in "user_password", with: password
    # ログインボタンをクリックする
    click_on("Log in")
  end
end
