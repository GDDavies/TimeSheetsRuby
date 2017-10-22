class User < ApplicationRecord
    has_and_belongs_to_many :projects
    before_save { email.downcase! }
    validates :last_name, length: { maximum: 50 }, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, length: { maximum: 255 }, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :job_title, length: { maximum: 30 }
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end
