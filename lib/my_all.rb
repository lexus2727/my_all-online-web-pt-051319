require 'pry'

def my_all?(collection)
  #create counter
  i = 0
  block_return_values = []
  
  #create while iterator
  #using .length allows the while to iterate through each element in the collecton
  while i < collection.length
  
  #yields each element in the collection to the block 
  #then adds return values to new array
     block_return_values << yield(collection[i])
   
     i = i + 1 #incrementes counter i+= 1
  end
  block_return_values     #returning new array
  
  #used to determine the return value of the my_all? method
  if block_return_values.include?(false)
    false
  else 
    true
  end

end
my_all?([1, 2, 3]) {|i| i < 2}













#when this code is run and it hits the yield line, it is going to send whatever is passed
#in as the argument to the block.

#hen it hits the yield(1), it is going to send 1 to the block, evaluate it, and send the return evaluate
#it, and send the return value back to yield