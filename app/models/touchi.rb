class Touchi < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'なし' },
    { id: 3, name: '豆鼓' },
    { id: 4, name: '豆鼓醬' },
    { id: 5, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end