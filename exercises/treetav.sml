datatype 'a tree = Lf | Br of 'a * 'a tree * 'a tree;

val birnam = Br(1, Br(2, Lf, Br(3,Br(4,Lf,Lf), Lf)), Lf);

(* fun preorder Lf = []
| preorder (Br(v, t1, t2)) = [v] @ preorder t1 @ preorder t2;*)

fun inorder(Lf, visited) = visited
  | inorder(Br(v, t1, t2), visited) = 
    inorder(t2, v::inorder(t1, visited));

fun postorder(Lf, visited) = visited
  | postorder(Br(v, t1, t2), visited) = 
    postorder(t2, postorder(t1, v::visited));

fun preorder(Lf, visited) = visited
  | preorder(Br(v, t1, t2), visited) = 
    v::preorder(t2, preorder(t1, visited));

preorder(birnam, []);
postorder(birnam, []);
inorder(birnam, []);
