p=gets.to_i
v=gets().chomp
g=v.split(" ").map{|j| j.to_i}
a=g.length
c=g
#puts g.class
m=[]
o=[]
for i in 2..p;
	m<<g.combination(i).to_a
end
m=m.flatten(1)
#print m[0]
for i in 0..(m.length-1);
	m[i]=m[i].inject(:^)
end
k=0
'''a.times{
	m<<g[i]
	k+=1
}'''
m+=c
#puts m
b=Hash.new(0)
p=m.each{|n| b[n]+=1}
#puts b.values
b=b.values.count(2)#{|h| h>=2}
puts b