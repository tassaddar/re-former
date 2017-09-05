class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true

def name
    :username     
    end

end
