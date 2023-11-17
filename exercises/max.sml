fun maxm([]) = 0
  | maxm([m]) = m
  | maxm(m::n::ns) = if m > n 
                     then maxm(m::ns) 
                     else maxm(n::ns);

maxm([43,25,2,4,2434]);
maxm([]);
