class UpdateDogsTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :dogs, :sub_breed, :string
    add_column :dogs, :name, :string
    add_column :dogs, :age, :string
  end
end
