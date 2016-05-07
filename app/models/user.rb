class User < ActiveRecord::Base
  validates :email, presence: true

  # Include default devise modules. Others available are:
  # :omniauthable, :timeoutable
  devise :database_authenticatable, :recoverable, :rememberable, :registerable,
         :trackable, :validatable, :async, :confirmable, :lockable

end
