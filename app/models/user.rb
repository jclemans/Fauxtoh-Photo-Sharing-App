class User < ActiveRecord::Base

  has_attached_file :avatar, :styles => { :medium => "300x300>",
                    :thumb => "50x50>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates_uniqueness_of :email
  has_secure_password

  has_many :photos, through: :tags
  has_many :photos
  has_many :favorites
  has_many :tags

  def recommendations
    my_faves = []
    similar_users = []

    self.favorites.find(:all, :conditions => {:user_id => self.id}).each do |favorite|
      my_faves << favorite.photo_id
    end

    my_faves.each do |id|
      similar_users << Favorite.where(photo_id: id).pluck(:user_id)
    end

    similar_users.flatten!
    similar_users.delete(self.id)
    result = similar_users.inject(Hash.new(0)) { |hash, item| hash[item] += 1; hash }
    Hash[result.sort_by{ |k,v| -v }]
  end

end
