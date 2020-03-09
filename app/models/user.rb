class User < ApplicationRecord
  validates :email, :password, :nickname, presence: true
  validates :email, :nickname, uniqueness: true
  validates_format_of :nickname, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:nickname]
 attr_writer :login
 has_many :lists
 has_one_attached :avatar

    def login
           @login || self.nickname || self.email
     end
end
