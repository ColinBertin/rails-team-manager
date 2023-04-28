class RemoveNumberFromPlayers < ActiveRecord::Migration[6.1]
  def change
    remove_column :players, :number, :integer
  end
end
