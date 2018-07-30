class MyClass
  def my_method
    @v = 1
  end
end

class MySubClass < MyClass
end

obj = MyClass.new
p obj.class
p MySubClass.ancestors #=> [MySubClass, MyClass, Object, Kernel, BasicObject]
p Kernel.private_instance_methods.grep(/^pr/) # => [:printf, :print, :proc]
#------------------------------------------------------

class Health
  def user_input
    puts 'カロリー計算開始！'
    @besal_metabolism = besal_metabolism()
    puts '本日の摂取カロリーの合計を入力してください。'
    @cal_intake = gets.to_i
    @burnt_cal = cal_formula()
    @unburnt_cal = cal_caliculation(@cal_intake, @burnt_cal, @besal_metabolism)
    puts "あなたの基礎消費カロリーはおよそ#{@besal_metabolism},あなたの摂取カロリーは#{@cal_intake},消費カロリーは#{@burnt_cal},本日の取り残しカロリーは#{@unburnt_cal}です"
  end

  def cal_caliculation(calory_intake, burnt_calory,besal_metabolism)
    result = calory_intake - (burnt_calory + besal_metabolism )
    return result
  end

  def cal_formula()
    puts "本日の徒歩・走りでの合計移動距離を入力してください。"
    @total_distance = gets.to_i
    puts '体重を入力してください'
    @user_weight = gets.to_i
    @result = @total_distance * @user_weight
    return @result
  end

  def besal_metabolism
    puts '性別はどちらですか？'
    puts '[1] 男性　[2]女性'
    user_gender = gets.to_i
    puts '年齢はいくつですか？'
    user_age = gets.to_i
    if user_gender == 1 && user_age <= 29
      return 1510
    elsif user_gender == 1 && user_age <= 49
      return 1530
    elsif user_gender == 1 && user_age <= 69
      return 1400
    elsif user_gender == 1 && user_age >= 70
      return 1280
    elsif user_gender == 2 && user_age <= 29
      return 1120
    elsif user_gender == 2 && user_age <= 49
      return 1150
    elsif user_gender == 2 && user_age <= 69
      return 1110
    elsif user_gender == 2 && user_age > 70
      return 1010
    else
      puts '何かがおかしい。。。'
    end
  end
end
obj = Health.new
obj.user_input()
