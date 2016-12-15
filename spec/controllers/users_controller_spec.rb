require 'rails_helper'

describe UsersController, :type => :controller do
  let(:user1) { User.create!(email: 'tester@test.com', password: 'password')}
  let(:user2) { User.create!(email: 'tester2@test.com', password: '123456')}
  #before do
    #@user = User.create!(email: 'testing@test.com', password: '123456789')
  #end

  describe 'GET #show' do

    context 'User is logged in' do
      before do
        sign_in user1
      end

      it 'loads correct user details' do
        get :show, id: user1.id
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq user1
      end

    end

    context 'No user is logged in' do
			it 'redirects to login' do
        get :show, id: user1.id
        expect(response).to redirect_to(root_path)
      end
    end

    context 'first user cannot access second users show page' do
      before do
        sign_in user2
      end

      it 'should not show another users show page' do
        get :show, id: user1.id
        expect(response).not_to be_successful
      end
    end
  end
end