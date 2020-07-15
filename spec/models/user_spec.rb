require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new(
    username: 'Testing',
    email: 'test@email.com',
    password_digest: 'Secure101'
  )}
  
  context 'validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a username' do
      subject.username = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid with a username less than 5 characters' do
      subject.username = 'XxXx'
      expect(subject).to_not be_valid
    end

    it 'is not valid with a username more than 15 characters' do
      subject.username = 'XxXxXxXxXxXxXxXx'
      expect(subject).to_not be_valid
    end

    it 'is not valid without an email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a password' do
      subject.password_digest = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid with a password less than 8 characters' do
      subject.password_digest = 'XxXxXxX'
      expect(subject).to_not be_valid
    end

    it 'is not valid with a username more than 32 characters' do
      subject.password_digest = 'XxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxX'
      expect(subject).to_not be_valid
    end
  end


end