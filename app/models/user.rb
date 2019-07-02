class User < ApplicationRecord
  has_many :microposts
  validates :name, presence: true, length: {maximum: 15}
  validates :email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP}
end
