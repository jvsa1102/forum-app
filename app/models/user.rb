class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_many(
    :communities,
    class_name: 'Community',
    foreign_key: 'user_id',
    inverse_of: :user,
    dependent: :destroy
  )
end
