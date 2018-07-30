describe 'How to run specific examples with Tags' do
  it 'is a slow test', :slow => true do
    puts 'This test is slow'
  end

  it 'is a fast test', :fast => true do
    puts 'This test is fast'
  end
end

#このように書いて
#rspec --tag fast
#これで指定したタグのみの実行が可能
