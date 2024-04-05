# frozen_string_literal: true

class AddFieldsToGames < ActiveRecord::Migration[7.0]
  def up
    add_column :games, :description, :text
    add_column :games, :released_on, :date
  end

  def down
    remove_column :games, :description, :text
    remove_column :games, :released_on, :date
  end
end
