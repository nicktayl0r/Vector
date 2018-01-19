class User < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_many :locations, dependent: :destroy
    has_secure_password
    validates :email, presence: true, uniqueness: true
    before_action :authorize,  before_action :authorize, except: [:new]
    
    
end
