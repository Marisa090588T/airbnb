class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true, uniqueness: { scope: :last_name }
  validates :user_name, uniqueness: true
  has_many :accommodations, dependent: :destroy
  has_many :bookings

  def forget
    update_attribute(:remember_digest, nil)
  end
  
end
