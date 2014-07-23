class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :answer
      t.integer :guess_count

      t.timestamps
    end
  end
end
