class Twiit < ApplicationRecord
  validates :twiit, length: { minimum: 1 }
  belongs_to :user, foreign_key: 'user_id'
end
