class User < ApplicationRecord
  has_secure_password
  has_many :tacospots

  validates :name, presence: true, uniqueness: true
end
