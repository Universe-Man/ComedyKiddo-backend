class AddSourceToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :source, :string
  end
end
