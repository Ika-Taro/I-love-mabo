class Oil < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'なし' },
    { id: 3, name: 'サラダ油' },
    { id: 4, name: 'ラー油' },
    { id: 5, name: '自家製ラー油' },
    { id: 6, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end