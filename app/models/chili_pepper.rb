class ChiliPepper < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'なし' },
    { id: 3, name: '鷹の爪' },
    { id: 4, name: '朝天唐辛子' },
    { id: 5, name: '子弾頭唐辛子' },
    { id: 6, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end