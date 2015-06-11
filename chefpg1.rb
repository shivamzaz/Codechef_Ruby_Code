def polygon(z,x,numpoints);
 	area = 0         #// Accumulates area in the loop
  	j = numpoints-1 #// The last vertex is the 'previous' one to the first
 	for  i in 0..(numpoints-1)#;(i=0; i<numPoints; i++)
     	area = area + ( (z[j]+z[i]) * (x[j]-x[i]))
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
		f=gets().chomp
		d=f.split(" ").map{|m| m.to_i}
		n=d.length
		for i in 1..(n-1);
			if((i%2)==0);
				l1<<d[2*(i-1)]  # x -coord
			else
				l2<<d[2*i-1]    # y -coord
			end
		end
		p<<polygon(l1,l2,b)
	}#end         #area finding
	for i in 0..(p.length-1);
		c<<p.count{|m| m>p[i]}
	end

	puts c

}