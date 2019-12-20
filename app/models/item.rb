class Item < ApplicationRecord
  has_many_attached :images
  belongs_to :user, optional: true
  accepts_nested_attributes_for :brand

  enum shipping_date:  {'1~2日で配送':1, '2~3日で配送':2,'4~7日で配送':3}
  enum shipping_method:  {'未定':1, 'らくらくメルカリ便':2,'ゆうメール':3, 'レターパック': 4, '普通郵便（定形、定形外）':5, 'クロネコヤマト': 6, 'ゆうパック': 7, 'クリックポスト':8, 'ゆうパケット': 9}
  enum postage:  {'送料込み（出品者負担）':1, '着払い（購入者負担）':2}
  enum condition:  {'新品/未使用':1, '未使用に近い':2, '目立った傷や汚れなし': 3, 'やや傷や汚れあり':4, 'キズや汚れあり':5, '全体的に状態が悪い':6}
  enum size: {'XXS以下':1, 'XS(SS)':2,'S':3, 'M':4, 'L':5, 'XL(LL)':6, '2XL(3L)':7, '3XL(4L)':8, '4XL(5L)以上':9, 'FREE SIZE':10, '20cm以下':11, '20.5cm':12, '21cm':13, '21cm':14, '21.5cm':15, '22cm':16, '22.5cm':17, '23cm':18, '24cm':19, '24.5cm': 20, '25cm':21, '25.5cm': 22, '26cm': 23, '26.5cm': 24, '27cm': 25, '27.5cm以上': 26}

end
