def void_last_transaction
  #subtracts the last item from the total 
  @total -= @price #updates total with last removed item 
  #new
  #returns total to 0.0 if all items have been removed from array 