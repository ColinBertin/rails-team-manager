class RemoveTeamFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_reference :users, :team, foreign_key: true, index: false
  end
end
