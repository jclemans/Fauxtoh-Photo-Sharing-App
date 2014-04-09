class Fixes < ActiveRecord::Migration
  def change
    drop_table :photos_users
  end

  def self.up
    rename_column :photos, :image, :photo
  end
end
