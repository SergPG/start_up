require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  context 'GET #index' do
    it 'return a success response' do
      get :index
      expect(response).to eq(true)

    end  

  end
  

    describe 'POST #create' do
        let(:params) do
            {
                article: {
                    title: 'Title Test RSpec',
                    body:   'Full texst in body Test',
                    status: 'public'
              }
            }
          end

        # it 'saves the new article in the database' do
        #     expect { post :create, params: }.to eq(article:)
        # end  

        it 'returns 302 status' do
            post :create, params: params
            expect(response).to have_http_status(302)
          end

    end    

end    