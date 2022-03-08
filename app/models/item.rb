class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :moto_id
  belongs_to :touban_id
  belongs_to :touchi_id
  belongs_to :tenmen_id
  belongs_to :soy_sauce_id
  belongs_to :sake_id
  belongs_to :soup_id
  belongs_to :chili_pepper_id
  belongs_to :oil_id
  belongs_to :minced_meat_id
  belongs_to :negi_id
  belongs_to :tofu_id
  belongs_to :garlic_id
  belongs_to :ginger_id
  belongs_to :huajiao_id

  validates :name, presence: true

  belongs_to :user
end
