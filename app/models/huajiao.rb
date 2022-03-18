class Huajiao < ActiveHash::Base
  self.data = [
    { id: 1, name: '# 花椒を選択(任意)' },
    { id: 2, name: 'なし' },
    { id: 3, name: '花椒' },
    { id: 4, name: '青花椒' },
    { id: 5, name: '花椒と青花椒のミックス' },
    { id: 6, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end