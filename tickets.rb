t=gets().to_i
while(t>0);
	s=gets().chomp
	s=s.split("").uniq.join("")
	if(s.length==2);
		puts("Yes")
	else
		puts("No")
	end
	t-=1
end