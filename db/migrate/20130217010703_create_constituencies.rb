class CreateConstituencies < ActiveRecord::Migration
  def change
    create_table :constituencies do |t|
      t.string :postcode
      t.integer :constituency_id
      t.string :constituency_name

      t.timestamps
    end
  end
end
