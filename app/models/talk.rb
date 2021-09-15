class Talk < ApplicationRecord
  belongs_to :room
  belongs_to :user

  validates :title, presence: true, length: {in: 1..255}
  default_scope -> { order(created_at: :desc) }
end
