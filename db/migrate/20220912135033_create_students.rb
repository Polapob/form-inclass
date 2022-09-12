class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :subject
      t.float :points

      t.timestamps
    end
  end
end
