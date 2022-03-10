class Moto < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'なし' },
    { id: 3, name: '丸美屋 麻婆豆腐の素シリーズ' },
    { id: 4, name: '丸美屋 贅を味わう 麻婆豆腐の素シリーズ' },
    { id: 5, name: 'CookDo 四川式麻婆豆腐用 素' },
    { id: 6, name: 'CookDo 広東式麻婆豆腐用 素' },
    { id: 7, name: 'CookDo あらびき肉入りシリーズ' },
    { id: 8, name: '横浜大飯店 中華街の四川式麻婆豆腐がつくれるソース' },
    { id: 9, name: '横浜大飯店 中華街の広東式麻婆豆腐がつくれるソース' },
    { id: 10, name: 'ヤマムロ 陳麻婆豆腐調料' },
    { id: 11, name: 'ユウキ 四川マーボーソース/辛口・花椒粉付' },
    { id: 12, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end