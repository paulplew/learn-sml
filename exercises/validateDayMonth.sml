(* Complete the expression *)
fun isValidDate(d, m) = true;

fun daysInMonth(month) = 
  case month of 
    "January" => 31
     | "February" => 28
     | "March" => 31
     | "April" => 30
     | "May" => 31
     | "June" => 30
     | "July" => 31
     | "August" => 31
     | "September" => 30
     | "October" => 31
     | "November" => 30
     | "December" => 31
     | _ => ~1

fun isValidDate(d, m) = d <= daysInMonth(m) ansalso d > 0;
