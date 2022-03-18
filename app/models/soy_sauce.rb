class SoySauce < ActiveHash::Base
  self.data = [
    { id: 1, name: '# 醤油を選択(任意)' },
    { id: 2, name: 'なし' },
    { id: 3, name: '白醤油' },
    { id: 4, name: '薄口醤油' },
    { id: 5, name: '濃口醤油' },
    { id: 6, name: '再仕込醤油' },
    { id: 7, name: '溜醤油' },
    { id: 8, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end