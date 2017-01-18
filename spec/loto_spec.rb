require_relative '../loto_v2.rb'

RSpec.describe Game do
  it 'Le tirage du joueur est valide' do
    avatar = Avatar.new
    tirage = avatar.tirage_joueur true
    expect(tirage).is_an Array
  end
end