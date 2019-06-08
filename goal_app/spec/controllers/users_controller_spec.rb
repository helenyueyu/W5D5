require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #new' do
    it 'renders the new users page' do
      get :new, params: {user: {}}

      expect(response).to render_template('new')
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET #index' do 
    it 'renders the users index page' do 
      get :index

      expect(response).to render_template('index')
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET #edit' do
    it 'renders the users edit page' do 
      user = User.create(username: 'harry-p', password: 'neopets')
      get :edit,  params: {id: user.id }

      expect(response).to render_template('edit')
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST #create' do
    it 'creates a new user' do
      get :create
    end

    it 'saves the user to the database' do
      #banana
    end

    it 'renders the user\'s URL' do
      #Hellenissleepy
    end





  end


end
