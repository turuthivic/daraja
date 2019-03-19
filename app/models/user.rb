class User < ApplicationRecord
  has_many :sales
  enum roles: [:admin, :user]
  # Include default devise modules. Others available are:
  # confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable
         #:recoverable, :validatable, :confirmable, :timeoutable
end
