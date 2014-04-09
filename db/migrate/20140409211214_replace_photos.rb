class ReplacePhotos < ActiveRecord::Migration
  def change
    drop_table :photos
  end

  def self.up
    create_table :photos do |t|
      t.attachment :photo
      t.belongs_to :user

      t.timestamps
    end
  end
end
