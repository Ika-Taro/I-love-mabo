class Tenmen < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'なし' },
    { id: 3, name: 'ユウキ 甜麺醤' },
    { id: 4, name: '李錦記 甜麺醤' },
    { id: 5, name: 'CookDo 甜麺醤' },
    { id: 6, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end