# for debug
# $LOAD_PATH.unshift('lib')

require 'romaji_list/list'
# require 'pry'

class String
  def to_romaji_list
    #小文字が2文字目に来たときは違うローマ字がある可能性
    #漢字 or かたかな or 英数字対応 or 記号
    #文字数長すぎるとだめだな
    input = self.split('')
    romaji_list = input.map { |n| ROMAJI_LIST[n.to_sym] }
    first, *rest = romaji_list
    first.product(*rest)
  end
end
