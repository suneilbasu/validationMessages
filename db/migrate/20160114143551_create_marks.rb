class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.string :project, default: 'CS'
      t.string :studentName, default: 'Bob'
      t.datetime :dob

      t.timestamps null: false
    end
  end
end
