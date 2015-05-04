t=gets().to_i
while(t>0);
	s=[]
	s=gets().chomp
	p=s.length
	a=[]
	#s=[]
	for i in 0..25;
		a[i]=0
	end
	for i in 0..p-1;
		c=s[i].ord
		c=c-97
		if(a[c]==0);
			a[c]=1
		end
	end
	c=0
	for i in 0..25;
		c+=a[i]
	end
	puts c
	t-=1
end