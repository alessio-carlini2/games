# frozen_string_literal: true

class AddMoreFieldsToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :director, :string
    add_column :games, :play_time, :string
    add_column :games, :image_file_name, :string
  end
end
