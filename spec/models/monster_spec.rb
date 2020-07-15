require 'rails_helper'

RSpec.describe Monster, type: :model do

  let(:owner){User.create(username: 'Testing', email: 'test@email.com', password_digest: 'Secure101')}
  subject { described_class.new(
    user_id: owner.id,
    name: 'testmon', 
    age: 3, # 0-infinite
    weight: 100,
    hunger: 5, # 0-5
    strength: 5, # 0-5 
    poop: 1, # 0-4
    sick: false,
    death: 30, # 0-30
    level: 'Champion' # ['Egg', 'Baby', 'Training', 'Rookie', 'Champion', 'Ultimate']
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

    it 'is not valid with an age less than 0' do
      subject.age = -1
      expect(subject).to_not be_valid
    end

    it 'is not valid without a weight' do
      subject.weight = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid with a weight less than 0' do
      subject.weight = -1
      expect(subject).to_not be_valid
    end

    it 'is not valid without a hunger value' do
      subject.hunger = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid with a hunger value less than 0' do
      subject.hunger = -1
      expect(subject).to_not be_valid
    end

    it 'is not valid with a hunger value more than 5' do
      subject.hunger = 6
      expect(subject).to_not be_valid
    end

    it 'is not valid without a strength value' do
      subject.strength = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid with a strength value less than 0' do
      subject.strength = -1
      expect(subject).to_not be_valid
    end

    it 'is not valid with a strength value more than 5' do
      subject.strength = 6
      expect(subject).to_not be_valid
    end

    it 'is not valid without a poop value' do
      subject.poop = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid with a poop value less than 0' do
      subject.poop = -1
      expect(subject).to_not be_valid
    end

    it 'is not valid with a poop value more than 4' do
      subject.poop = 5
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

    it 'is not valid with a death value less than 0' do
      subject.death = -1
      expect(subject).to_not be_valid
    end

    it 'is not valid with a death value more than 30' do
      subject.death = 31
      expect(subject).to_not be_valid
    end

    it 'is not valid without a level' do
      subject.level = nil
      expect(subject).to_not be_valid
    end

    it 'is only valid with assigned level names' do
      subject.level = "Something"
      expect(subject).to_not be_valid
    end
  end

  context 'associations' do
    it { should belong_to(:user) }
  end

end
