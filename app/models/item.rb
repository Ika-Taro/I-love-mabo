class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :moto
  belongs_to :touban
  belongs_to :touchi
  belongs_to :tenmen
  belongs_to :soy_sauce
  belongs_to :sake
  belongs_to :soup
  belongs_to :chili_pepper
  belongs_to :oil
  belongs_to :minced_meat
  belongs_to :negi
  belongs_to :tofu
  belongs_to :garlic
  belongs_to :ginger
  belongs_to :huajiao

  validates :name, presence: true

  belongs_to :user
  has_one_attached :image
end
