
def polygon(l1,l2,numpoints);
 	area = 0         #// Accumulates area in the loop
  	j = numpoints-1 #// The last vertex is the 'previous' one to the first
 	for  i in 0..(numpoints-1)#;(i=0; i<numPoints; i++)
     	area = area + ((l1[j]+l1[i]) * (l2[j]-l2[i]))
      	j = i;  #//j is previous vertex to i
  	end
 	return area/2;
end
gets().to_i.times{
	p=[]
	c=[]
	gets().to_i.times{
		l1=[]
		l2=[]
		b=gets().to_i
		g=gets().chomp
		d=g.split(" ").map{|k| k.to_i}
		for i in 0..(d.length-1);
			if(i%2==0);
				l1<<d[i]
			else
				l2<<d[i]
			end
		end
		#puts l1,l2
		p<<(polygon(l1,l2,b)).abs
		#puts p

	}
	for i in 0..(p.length-1);
		d=p.count{|m| m<p[i]}
		if(d);
			print("#{d} ")
		end
	end

	'''for i in 0..(c.length-1);
		print("#{c[i]} ")
	end'''
	print("\n")
	#puts p
}