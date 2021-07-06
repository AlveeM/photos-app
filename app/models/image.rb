class Image < ApplicationRecord
  belongs_to :collage
  accepts_nested_attributes_for :collage

  validates :title, presence: true, uniqueness: { message: "needs to be unique" }
  validates :description, presence: true
  validates :image_url, presence: true, image_url_format: { on: :create }
  
  def self.most_recent
    self.order(created_at: :desc)
  end

  def uploaded_at
    self.created_at.to_date
  end
end
