class AddImageToMonster < ActiveRecord::Migration[6.0]
  def change
    add_column :monsters, :image, :string
  end
end
