class Cocktail < ApplicationRecord
  has_many :doses
  has_many :reviews
  has_many :ingredients, through: :doses, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  mount_uploader :image, ImageUploader

  def self.search(search)
    return Cocktail.all unless search

    @cocktails = Cocktail.where('name ILIKE ?', "%#{search}%")
  end
end
