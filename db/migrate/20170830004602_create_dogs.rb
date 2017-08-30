class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.string :breed
      t.string :sub_breed

      t.timestamps
    end
  end
end
