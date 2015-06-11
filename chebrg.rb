gets().to_i.times{
    v=gets().to_i
    p=gets().chomp
    a=p.split(" ").map{|b| b.to_i}
    f=a.length
    g=a[0]
    if(a.uniq.length==1);
        puts a[0]
    else
        for i in 1..(f-1);
            if((a[i]-a[i-1])>=0);
                g+=(a[i]-a[i-1]).abs
            end
        end
        puts g
    end
}