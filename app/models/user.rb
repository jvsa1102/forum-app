class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_secure_password
end

# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string
#  password_digest :string
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
