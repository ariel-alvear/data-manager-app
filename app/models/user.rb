class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :race_participants
  has_many :league_participants

  def self.from_this_league(league_id)
    includes(:league_participants).where(league_participants: { league_id: league_id })
  end
end
