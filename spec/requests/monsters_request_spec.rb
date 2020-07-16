require 'rails_helper'

RSpec.describe "Monsters", type: :request do

  describe 'GET #index' do
    before(:example) do
      @first_monster = create(:monster)
      # p @first_monster
      @last_monster = create(:monster)
      # p @last_monster
      get '/monsters'
      @json_response = JSON.parse(response.body)
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'JSON response contains the correct number of entries' do
      expect(@json_response['monsters'].count).to eq(2)
    end

    it 'JSON response body contains expected attributes' do
      expect(@json_response['monsters'][0]).to include({
        'user_id' => @first_monster.user_id,
        'name' => @first_monster.name,
        'age' => @first_monster.age,
        'weight' => @first_monster.weight,
        'hunger' => @first_monster.hunger,
        'strength' => @first_monster.strength,
        'poop' => @first_monster.poop,
        'sick' => @first_monster.sick,
        'death' => @first_monster.death,
        'level' => @first_monster.level,
      }) 
    end
  end

  describe 'POST #create' do
    context 'when the monster is valid' do
      before(:example) do
        @monster_params = attributes_for(:monster)
        post '/monsters', params: { monster: @monster_params }
      end

      it 'returns http created' do
        expect(response).to have_http_status(:created)
      end

      it 'saves the Monster to the database' do
        expect(Monster.last.name).to eq(@monster_params[:name])
      end
    end
  end
end