class CreateHouseworks < ActiveRecord::Migration[6.0]
  def change
    create_table :houseworks do |t|
      t.string :title
      t.text :manner
      t.timestamps
    end
  end
end
