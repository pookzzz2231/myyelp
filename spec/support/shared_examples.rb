shared_examples "required signed in user" do
  it "redirects to login path" do
    session[:user_id] = nil
    action
    expect(response).to redirect_to login_path
  end
end 