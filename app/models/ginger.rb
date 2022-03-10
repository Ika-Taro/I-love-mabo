class Ginger < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'なし' },
    { id: 3, name: 'しょうがみじん切り' },
    { id: 4, name: 'チューブしょうが' },
    { id: 5, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end