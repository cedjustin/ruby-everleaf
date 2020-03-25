class User < ApplicationRecord
    validates :email, presence:true, uniqueness:true,length:{maximum: 255}
    validates :username, presence:true, uniqueness:true,length:{maximum: 30}
    before_validation {username.downcase!}
    has_secure_password
    validates :password, :password_confirmation, presence:true, length: {minimum: 6}
    has_many :tasks, dependent: :destroy
end
