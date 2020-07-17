require 'rails_helper'

# @first_user = User.create(username: 'test101', email: 'test01@email.com', password: 'password',)

RSpec.describe "Users", type: :request do


  describe 'POST #create' do
    context 'when the user is valid' do
      before(:example) do
        @user_params = attributes_for(:user)
        post '/sign-up', params: { user: @user_params }
      end

      it 'returns http created' do
        expect(response).to have_http_status(:created)
      end

      it 'saves the user to the database' do
        expect(User.last.username).to eq(@user_params[:username])
      end
    end
  end
end
