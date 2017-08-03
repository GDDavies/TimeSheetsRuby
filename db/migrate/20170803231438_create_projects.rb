class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :project_code
      t.boolean :has_warrant
      t.integer :gate_passed
      t.boolean :is_capital_project
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
