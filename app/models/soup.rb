class Soup < ActiveHash::Base
  self.data = [
    { id: 1, name: '# スープを選択(任意)' },
    { id: 2, name: 'なし' },
    { id: 3, name: '水' },
    { id: 4, name: '粉末鶏がらスープの素' },
    { id: 5, name: 'ペースト状の中華スープの素' },
    { id: 6, name: '毛湯(手作り)' },
    { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end