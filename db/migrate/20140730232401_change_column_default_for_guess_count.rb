class ChangeColumnDefaultForGuessCount < ActiveRecord::Migration
  def change
    change_column_default :games, :guess_count, 0 
  end
end
