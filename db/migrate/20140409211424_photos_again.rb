class PhotosAgain < ActiveRecord::Migration

  def self.up
    create_table :photos do |t|
      t.attachment :photo
      t.belongs_to :user

      t.timestamps
    end
  end
end
