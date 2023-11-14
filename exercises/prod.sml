fun prodi([], result) = result
  | prodi (n::ns, result) = prodi(ns, n * result);

(* Make tail recursive *)
fun prod(ns) = prodi(ns, 1);

prod([2,3,4,5]) = 120;
prod([]) = 1;
