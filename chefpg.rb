def polygon(X, Y, numPoints);
  area = 0;         // Accumulates area in the loop
  j = numPoints-1;  // The last vertex is the 'previous' one to the first

  for  i in 0..(numpoints-1);#;(i=0; i<numPoints; i++)
     	area = area +  (X[j]+X[i]) * (Y[j]-Y[i]); 
      	j = i;  //j is previous vertex to i
  return area/2;
end
gets().to_i.times{
	p=[]
	c=[]
	gets().to_i.times{
		l1=0
		l2=0
		p=gets().to_i
		f=gets()
		d=f.split(" ").map{|m| m.to_i}
		n=d.length
		for i in 0..(n-1);
			if((i%2)!=0);
				l1+=d[2*(i-1)]
			else
				l2+=d[2*i-1]
			end
		end
		p<<polygon(l1,l2,p)
	}           #area finding
	for i in 0..(p.length-1);
		c<<p.count{|m| m>p[i]}
	end
	puts c

}