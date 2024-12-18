# Ruby Array Object Modification Bug

This repository demonstrates an uncommon bug in Ruby related to modifying objects within an array.  The issue arises when you expect changes to an object within the array to affect other objects, but this doesn't happen as expected because each object is independent.

The `bug.rb` file contains the buggy code. The `bugSolution.rb` demonstrates how to correct this behavior, ensuring that changes to objects in the array are handled as intended.