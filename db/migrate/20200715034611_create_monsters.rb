class CreateMonsters < ActiveRecord::Migration[6.0]
  def change
    create_table :monsters do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :age
      t.integer :weight
      t.integer :hunger
      t.integer :strength
      t.integer :poop
      t.boolean :sick
      t.integer :death
      t.string :level

      t.timestamps
    end
  end
end
