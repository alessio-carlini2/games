class RemoveImageFileNameFromGames < ActiveRecord::Migration[7.0]
  def change
    remove_column :games, :image_file_name, :string
  end
end
