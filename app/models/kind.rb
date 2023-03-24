class Kind < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'レギュラー(豆・粉)' },
    { id: 3, name: 'インスタント' },
    { id: 4, name: 'コーヒーバッグ' },
    { id: 5, name: 'リキッドコーヒー' },
    { id: 6, name: 'ポーションコーヒー' },
    { id: 7, name: '缶コーヒー' },
    { id: 8, name: 'カフェベース' },
    { id: 9, name: 'その他' }
  ]
  end