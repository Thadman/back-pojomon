require 'rails_helper'

RSpec.describe Monster, type: :model do
  subject { described_class.new(
    user_id: 1,
    name: 'testmon',
    age: 3,
    weight: 100,
    hunger: 5,
    strength: 5,
    poop: 1,
    sick: false,
    death: 30,
    level: 'champion'
  )}
  
  context 'validations' do
    
    # it 'is valid with valid attributes' do
    #   expect(subject).to be_valid
    # end

  end
end
