##オープンクラス

class Array
  def message
    'Ruby is Awesome'
  end
end

p %w(val val2).message #=> "Ruby is Awesome"

## eval族
eval 'p self' #=> main
eval 'p 1 + 1' #=> 2
