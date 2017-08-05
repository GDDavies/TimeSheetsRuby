class User < ApplicationRecord
    has_and_belongs_to_many :projects
    validates :last_name, length: { maximum: 50 }, presence: true
    validates :email, length: { maximum: 50 }, presence: true
    validates :job_title, length: { maximum: 30 }
end
