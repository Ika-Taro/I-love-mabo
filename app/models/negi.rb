class Negi < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'なし' },
    { id: 3, name: '白ネギ' },
    { id: 4, name: '葉ネギ' },
    { id: 5, name: 'わけぎ' },
    { id: 6, name: '玉ネギ' },
    { id: 7, name: '葉にんにく' },
    { id: 8, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end