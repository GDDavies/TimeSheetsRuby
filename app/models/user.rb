class User < ApplicationRecord
    validates :first_name, length: { maximum: 50 }, presence: true
    validates :last_name, length: { maximum: 50 }, presence: true
    validates :email, length: { maximum: 50 }, presence: true
    validates :job_title, length: { maximum: 30 }
end
