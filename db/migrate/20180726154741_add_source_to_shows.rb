class AddSourceToShows < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :source, :string
  end
end
