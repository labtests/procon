#!/usr/bin/env ruby
#http://nabetani.sakura.ne.jp/hena/orde09_penwa/
#http://qiita.com/Nabetani/items/1c0a2bb20b3ab3e7f55b

T=[
	[[0,0,1,4],[-1,0,2,3],[0,-1,3,2],[1,-1,1,2],[0,0,2,1]],
	[[0,0,2,0],[0,0,3,4],[-1,1,0,3],[-1,0,3,1],[0,0,0,0]],
	[[0,0,1,0],[0,0,0,4],[1,-1,3,3],[1,0,0,1],[0,0,3,0]],
	[[0,0,2,4],[1,0,1,3],[0,1,0,2],[-1,1,2,2],[0,0,1,1]],
]

while gets
	cur=[0,0,0,2]
	trail={cur[0,3]=>0}
	i=0
	if $_.chomp.each_char{|c|
		if c=='a'
			cur[3]=(cur[3]-1)%5
		elsif c=='c'
			cur[3]=(cur[3]+1)%5
		elsif c=='F'
			i+=1
			dx,dy,z,dir=T[cur[2]][cur[3]]
			cur=[cur[0]+dx,cur[1]+dy,z,dir]
			if trail.has_key?(cur[0,3])
				puts '%d,%d'%[i,trail[cur[0,3]]]
				break
			end
			trail[cur[0,3]]=i
		end
	}
		puts '-'
	end
	STDOUT.flush
end
