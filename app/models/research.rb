class Research < ActiveRecord::Base
  validates :topic, uniqueness: { message: '"%{value}" already exists.' }
  validates :topic, presence: true

  belongs_to :user
end
