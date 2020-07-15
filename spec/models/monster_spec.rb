require 'rails_helper'

RSpec.describe Monster, type: :model do

  let(:owner){User.new(username: 'Testing', email: 'test@email.com', password_digest: 'Secure101')}
  subject { described_class.new(
    user_id: owner.id,
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
    
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without an age' do
      subject.age = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a weight' do
      subject.weight = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a hunger value' do
      subject.hunger = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a strength value' do
      subject.strength = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a poop value' do
      subject.poop = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a sick value' do
      subject.sick = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a death value' do
      subject.death = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a level' do
      subject.level = nil
      expect(subject).to_not be_valid
    end

  end

  context 'associations' do
    it { should belong_to(:user) }
  end

end
