class ChangePhotosToAvatar < ActiveRecord::Migration
  def change
    def self.up
      rename_column :photos, :image, :avatar
    end
  end
end
