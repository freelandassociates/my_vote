class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :constituency_id
      t.string :postcode
      t.integer :candidate_id

      t.timestamps
    end
  end
end
