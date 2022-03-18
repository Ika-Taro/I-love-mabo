class Sake < ActiveHash::Base
  self.data = [
    { id: 1, name: '# 酒を選択(任意)' },
    { id: 2, name: 'なし' },
    { id: 3, name: '料理酒' },
    { id: 4, name: '紹興酒' },
    { id: 5, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end