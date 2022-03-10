class Touban < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'なし' },
    { id: 3, name: 'ユウキ 四川豆板醤' },
    { id: 4, name: '李錦記 豆板醤' },
    { id: 5, name: 'CookDo 豆板醤' },
    { id: 6, name: '郫県豆瓣醤' },
    { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end