class AddCounterToMonster < ActiveRecord::Migration[6.0]
  def change
    add_column :monsters, :counter, :integer
  end
end
