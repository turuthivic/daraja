class User < ApplicationRecord
  has_many :sales
  enum roles: [:admin, :user]
  after_initialize :set_default_role, if: :new_record?
  # Include default devise modules. Others available are:
  # confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable
         #:recoverable, :validatable, :confirmable, :timeoutable

  def set_default_role
  	self.role ||= :user
  end
end
