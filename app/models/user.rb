class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true, uniqueness: { scope: :last_name }
  validates :user_name, uniqueness: true
  has_many :accommodations, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :notifications, dependent: :destroy 
  
  def forget
    update_attribute(:remember_digest, nil)
  end

  def favorite(accommodation)
    Favorite.create!(user_id: id, accommodation_id: accommodation.id)
  end

  def unfavorite(accommodation)
    Favorite.find_by(user_id: id, accommodation_id: accommodation.id).destroy
  end

  def favorite?(accommodation)
    !Favorite.find_by(user_id: id, accommodation_id: accommodation.id).nil?
  end
end
