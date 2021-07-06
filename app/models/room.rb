class Room < ApplicationRecord
  belongs_to :user
  has_many :talks, dependent: :destroy
  validates :title, presence: true, length: {in: 1..150}
end
