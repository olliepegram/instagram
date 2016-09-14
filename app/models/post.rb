class Post < ApplicationRecord
  belongs_to :user
  acts_as_likeable
  acts_as_liker

  has_attached_file :image, styles: { medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
