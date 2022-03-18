class Touchi < ActiveHash::Base
  self.data = [
    { id: 1, name: '# 豆鼓を選択(任意)' },
    { id: 2, name: 'なし' },
    { id: 3, name: '豆鼓' },
    { id: 4, name: '豆鼓醬' },
    { id: 5, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end