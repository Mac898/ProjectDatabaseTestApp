class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :job
      t.string :job_description
      t.string :po_number
      t.string :manager
      t.string :status
      t.string :date
      t.string :total
      t.string :comment

      t.timestamps
    end
  end
end
