class Item < ApplicationRecord
  validates :name, :user_attack_increase, :one_time_attack, presence: true
  has_many :user_items
end
