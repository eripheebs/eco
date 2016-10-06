class Investment < ActiveRecord::Base
  validates :title, uniqueness: { message: '"%{value}" already exists.' }
  validates :title, presence: true

  belongs_to :user
end
