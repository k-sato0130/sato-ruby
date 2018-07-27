require 'yaml'
require 'json'
require 'fileutils'

yaml_data = <<-DATA
- Red
- Green
- Blue
---
- Yellow
- Pink
- White
DATA

p YAML.load(yaml_data) #=> ["Red", "Green", "Blue"]

json1 = JSON.dump(["RED","GREEN","BLUE"])
p json1 #=> "[\"RED\",\"GREEN\",\"BLUE\"]"
p JSON.parse(json1) #=> ["RED", "GREEN", "BLUE"]

p FileUtils.pwd #=> "/Users/k-sato/Desktop/Ruby/PerfectRuby/Libraries"
