require 'rails_helper'

RSpec.describe "Games", type: :request do
  describe "GET /games" do
    it "works! (now write some real specs)" do
      get games_path
      expect(response).to have_http_status(200)
    end
  end
  describe 'POST /games' do
    it 'save a new game and persist attributes' do
      game_params = {name: "FizzBuzz", description: "Dummy counting game", players: 4}
      expect {post games_path, game: game_params}.to change{Game.count}.by 1
      expect( game_params.stringify_keys.to_a - Game.last.attributes.stringify_keys.to_a).to be_empty
    end
  end
end
