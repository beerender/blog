class CreateXyzs < ActiveRecord::Migration[6.0]
  def change
    create_table :xyzs do |t|
      t.string :name

      t.timestamps
    end
  end
end
