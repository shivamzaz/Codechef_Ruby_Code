gets().to_i.times{
	p=gets.to_i
	for i in 0..p-1;
		a[i]=[]
		n=gets().to_i
		m=gets()
		f=m.split(" ").map{|b|.to_i}
		a[i]<<f
		g[i]=f.length
	end
	i=0
	j=1
	k=0
	cnt=[]
	while(i<g.max);
		while(j<g.max);
			if(a[i][j]<a[j][i]);
				j+=1
				k=1
			else
				i+=1
			end
		end
		if(k==1);
			cnt[i]+=1
		end
	end
	puts cnt






}