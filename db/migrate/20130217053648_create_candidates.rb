class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.integer :constituency_id
      t.integer :candidate_id
      t.string :candidate_name
      t.string :party

      t.timestamps
    end
  end
end
