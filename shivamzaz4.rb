require 'benchmark'#
include Benchmark#
n=1_000_000#
def gcd(a,b);
	if(b==0);
		return a 
	else
		return gcd(b,a%b)
	end 
end
bm(13) do |x| #
	x.report("algO"){n.times{gcd(2,3)}} 
	x.report("main"){n.times{2.gcd(3)}}
end#
