class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :role
      t.belongs_to :board, foreign_key: true
      t.string :list
      t.string :belongs_to

      t.timestamps
    end
  end
end
