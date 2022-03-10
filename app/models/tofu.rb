class Tofu < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'なし' },
    { id: 3, name: '木綿' },
    { id: 4, name: '絹ごし' },
    { id: 5, name: '充填豆腐' },
    { id: 6, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end