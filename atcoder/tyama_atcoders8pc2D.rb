#!ruby -rprime -rzlib
a=Zlib.inflate("eNpk0cENxEAIQ9H7VgPGBtN/Y5uZHHP0l6I8MUNHBqPWNh3xG8xsbbRcQz6lo7lcIFWJeAqtXG3NANx+SnV5e1XY9OCUKHDYGdPq8xUI7WzbnaBPCWRzh6GDeEo6l+Z0U1t9ChLrNVnR4CmRYdATkK7H4dZ6G8HsD/mIg4VdOgPhD+9YbMdkaK7/i/vlFEx0cVA4QdmoqVAZPoFklARf+5f6czeRlVN9oWNoGFsZl6WZTiJT7+1rE55gS8Gv8ocOy1EZ9V5r1SyhMLrECmIjpWw/e8fI6eyaPrOyS4bed20hqZiReTDyOrmK+y96M+xw2me2nLOJ93ULHQOVZy9slhvD0XWh16os6WW5C5OtAK+Si1bPfFU/7yqDymvqYRdcfg3ckQAtDqGmsplLXlBCT4EPD6DPbbHvmTACattntVtG7OCuaDylGWf9u6SyHIthEPaf04BZAve/2LCoeu1IUSVosI0dhkpxuY597RtzrhSF0dV9PjquWCb+UR+kCIdjrkEplZDpX6Yq1N1SGKMIYcTaZWd2L2Lz7KhFZZ7fFUEW+1dLS4lw3YCVk+BOsZGI8WYJSmMRWvfTr21OTHrNfbg8Q8qy2JdwCaw6sVtsMqLJxaUf7AOpArstyJTkQ/jmO8yES+yzjbGovnmPVctGu9SEr/JUsl7uQI1Ux64aiNWvl+ARbSEMUPqR/DiOM3xWUEGdF8GZxqzEDh7Mi7yIBtc641LwyArXOgWMtXXKeGAblUYWIuo8mA/SA/TMnzZ+1h4WzUgvDEFT4O764NsA7oJZrWFD2HesvjSzY+/MHNgGMMTGaNohNZ/rc6Mhx7XqxW50BqJVzg8687aqW82qjx89OPwHtKorlA==".unpack(?m)[0]).split.map &:to_i;gets;$<.map{|_|n=_.to_i;x=a.bsearch{|e|e<=n};puts [x.prime_division.reduce(1){|s,e|s*-~e[1]},x]*" "}