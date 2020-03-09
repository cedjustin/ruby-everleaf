class User < ApplicationRecord
    validates :username, presence:true, uniqueness:true,length:{maximum: 30}
    before_validation {username.downcase!}
    has_secure_password
    validates :password, :password_confirmation, presence:true, length: {minimum: 6}
end
