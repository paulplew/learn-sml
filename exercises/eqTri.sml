datatype shape = Point of real * real
| Line of (real * real) * (real * real)
| Triangle of (real * real) * (real * real) * (real * real)

fun dist((x1, y1), (x2, y2)) = 
  Math.sqrt(Math.pow(x1+x2, 2.0) + Math.pow(x1+x2, 2.0));

fun showTriCood [] = []
  | showTriCood(Triangle(a,b,c)::ps) = (a,b,c)::showTriCood(ps)
  | showTriCood(p::ps) = showTriCood(ps)

fun eqTri [] = []
  | eqTri(Triangle(a, b, c)::ps) =
    if 
      Real.compare(dist(a, b), dist(b, c)) = EQUAL andalso 
      Real.compare(dist(a, b), dist(a, c)) = EQUAL then
        (a,b,c)::eqTri(ps)
    else eqTri(ps)
  | eqTri(p::ps) = eqTri(ps);

val shapes = [Line((2.2,3.5),(4.1,5.0)), Point(4.5,2.0), Triangle((21.0, 4.5),(15.5, 21.1),(10.5, 10.2))];
showTriCood(shapes);
eqTri(shapes);
