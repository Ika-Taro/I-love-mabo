class MincedMeat < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'なし' },
    { id: 3, name: '豚挽肉' },
    { id: 4, name: '牛・豚合挽肉' },
    { id: 5, name: '牛挽肉' },
    { id: 6, name: '鶏挽肉' },
    { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end