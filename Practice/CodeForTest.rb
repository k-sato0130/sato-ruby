class StringAnalyzer
   def has_vowels?(str)
      !!(str =~ /[aeiuo]+/i)
   end
end
