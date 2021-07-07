class Room < ApplicationRecord
  belongs_to :user
  has_many :talks, dependent: :destroy
  validates :title, presence: true, length: {in: 1..150}

  def self.search(search)
    if search
      where(['title LIKE ?', "%#{search}%"])
    else
      all
    end
  end
end