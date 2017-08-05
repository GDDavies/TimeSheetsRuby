class Project < ApplicationRecord
  validates :project_name, length: { maximum: 50 }, presence: true
  validates :project_code, length: { maximum: 7 }, presence: true
  validates :gate_passed, :inclusion => 0..5, presence: true
end
