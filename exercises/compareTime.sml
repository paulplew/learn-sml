fun timeBefore((h1, m1, ampm1: string), (h2, m2, ampm2: string)) = 
  if (ampm1 = ampm2) then 
    (h1 < h2) orelse (h1 = h2 andalso m1 < m2)
  else 
    if ampm1 > ampm2 then 
      false 
    else 
      true;

timeBefore((1, 59, "AM"), (2, 40, "PM")) = true;
timeBefore((1, 59, "PM"), (2, 40, "PM")) = true;
timeBefore((1, 59, "PM"), (2, 40, "AM")) = false;
timeBefore((1, 59, "AM"), (2, 40, "AM")) = true;


