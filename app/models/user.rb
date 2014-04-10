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



end
