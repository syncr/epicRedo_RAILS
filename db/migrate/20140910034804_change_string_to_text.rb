class ChangeStringToText < ActiveRecord::Migration
  def change
    change_column :lessons, :description, :text
  end
end
