class Admin < ApplicationRecord
    belongs_to :user, dependent: :destroy
end
