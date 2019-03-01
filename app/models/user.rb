class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :playdates, dependent: :destroy

  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  def fullname
    "#{first_name} #{last_name}"
  end
end
