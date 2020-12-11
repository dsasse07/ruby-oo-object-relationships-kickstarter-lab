require 'pry'
require 'require_all'

require_all './lib'

mug = Project.new("Fancy Mug") #has many followers
app = Project.new("Cool App")  #has two followers
bad_project = Project.new("I stink") #no followers

a = Backer.new("A")
b = Backer.new("b")
c = Backer.new("c")
d = Backer.new("d")
e = Backer.new("e")
f = Backer.new("f")

pb1 = ProjectBacker.new(mug, a)
pb4 = ProjectBacker.new(mug, d)
pb3 = ProjectBacker.new(mug, c)
pb2 = ProjectBacker.new(mug, b)
pb5 = ProjectBacker.new(app, e)
pb6 = ProjectBacker.new(app, f)

binding.pry
0