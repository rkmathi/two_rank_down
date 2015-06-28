puts 'this is string'
# puts 'this is string'.hoge # `String#hoge`メソッドは存在しないのでエラー

### Stringクラスを再オープンしてhogeメソッドを定義
class String
  def hoge
    self + ' hogehoge'
  end
end

puts 'this is string'.hoge

str = 'fugafuga'
puts str.hoge


### 整数(Fixnum)クラスの+メソッド
puts 2.+(3)
puts 2 + 4


### Fixnumクラスを再オープンしてfugaメソッド(ただの掛け算)を定義
class Fixnum
  def fuga(other)
    self * other
  end
end

puts 2.fuga(5)
