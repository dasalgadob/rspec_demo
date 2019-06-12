require 'rails_helper'

RSpec.describe "Test signup request", type: :request do

    before do
        
        #post '/users', params: { user: {name: "Diego", email: "dasalgadob@unal.edu.co",
        #password: "xxdK1996@", password_confirmation: "xxdK1996@"} }
      end

    it "returns http status created" do
        get '/'
        expect(response).to have_http_status(:success)
    end

    it "returns http status success" do
        post '/users', params: {"user": {"name": "DIego", "email": "dasalgadob@unal.edu.co",
        "password": "xxdK1996@", "password_confirmation": "xxdK1996@" }}
        expect(response).to have_http_status(:success)
    end

end
