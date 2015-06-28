require 'ripper'

### ソースコード
src = <<EOS
def hoge(a, b)
  a + b
end
puts hoge(3, 5)
EOS

### tokenizeメソッドでトークン単位に分解
p Ripper.tokenize(src)
# [
#   "def", " ", "hoge", "(", "a", ",", " ", "b", ")", "\n",
#   "  ", "a", " ", "+", " ", "b", "\n",
#   "end", "\n",
#   "puts", " ", "hoge", "(", "3", ",", " ", "5", ")", "\n"
# ]

### lexメソッドでトークンの位置と意味を列挙
p Ripper.lex(src)
# [
#   [[1, 0], :on_kw, "def"], [[1, 3], :on_sp, " "], [[1, 4], :on_ident, "hoge"],
#     [[1, 8], :on_lparen, "("], [[1, 9], :on_ident, "a"], [[1, 10], :on_comma, ","],
#     [[1, 11], :on_sp, " "], [[1, 12], :on_ident, "b"], [[1, 13], :on_rparen, ")"], [[1, 14], :on_ignored_nl, "\n"],
#   [[2, 0], :on_sp, "  "], [[2, 2], :on_ident, "a"], [[2, 3], :on_sp, " "], [[2, 4], :on_op, "+"], [[2, 5], :on_sp, " "], [[2, 6], :on_ident, "b"], [[2, 7], :on_nl, "\n"],
#   [[3, 0], :on_kw, "end"], [[3, 3], :on_nl, "\n"],
#   [[4, 0], :on_ident, "puts"], [[4, 4], :on_sp, " "], [[4, 5], :on_ident, "hoge"],
#     [[4, 9], :on_lparen, "("], [[4, 10], :on_int, "3"], [[4, 11], :on_comma, ","],
#     [[4, 12], :on_sp, " "], [[4, 13], :on_int, "5"], [[4, 14], :on_rparen, ")"], [[4, 15], :on_nl, "\n"]]
