fun allChange(coins, coinvals, 0, result) = coins::result
  | allChange(coins, [], amount, result) = result
  | allChange(coins, c::coinvals, amount, result) = 
      if amount < 0 then result
      else allChange(
        coins, coinvals, amount, allChange(c::coins, c::coinvals, amount-c, result)
      );

allChange([], [5,2], 16, []);
allChange([], [25,10,2,1], 43, []);
