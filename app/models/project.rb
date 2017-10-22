class Project < ApplicationRecord
  has_and_belongs_to_many :users
  validates :project_name, length: { maximum: 15 }, presence: true
  validates :project_code, length: { maximum: 7 }, presence: true
  validates :gate_passed, :inclusion => 0..5, presence: true
end
