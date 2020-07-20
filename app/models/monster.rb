class Monster < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :name, presence: true, inclusion: ['Egg', 'Botomon', 'Koromon', 'Agumon', 'Betamon', 'Greymon', 'Devimon', 'Airdramon', 'Numemon', 'Tyranomon', 'Meramon', 'Seadramon', 'Metal Greymon', 'Monzaemon', 'Mamemon']
  validates :age, presence: true, :numericality => { :only_integer => true, :greater_than => -1 }
  validates :weight, presence: true, :numericality => { :only_integer => true, :greater_than => -1 }
  validates :hunger, presence: true, :numericality => { :only_integer => true, :greater_than => -1, :less_than => 6 }
  validates :strength, presence: true, :numericality => { :only_integer => true, :greater_than => -1, :less_than => 6 }
  validates :poop, presence: true, :numericality => { :only_integer => true, :greater_than => -1, :less_than => 5 }
  validates :sick, inclusion: [true, false]
  validates :death, presence: true, :numericality => { :only_integer => true, :greater_than => -1, :less_than => 31 }
  validates :level, presence: true, inclusion: ['Egg', 'Baby', 'Training', 'Rookie', 'Champion', 'Ultimate']
end
