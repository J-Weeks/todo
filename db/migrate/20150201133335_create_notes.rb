class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :comment
      t.belongs_to :task, index: true

      t.timestamps null: false
    end
    add_foreign_key :notes, :tasks
  end
end
