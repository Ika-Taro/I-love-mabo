class Garlic < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'なし' },
    { id: 3, name: 'にんにくみじん切り' },
    { id: 4, name: 'チューブにんにく' },
    { id: 5, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end