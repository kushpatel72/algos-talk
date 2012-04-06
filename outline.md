# Why Algorithms?
* Many companies quiz you on these
* On the job, knowledge of algorithms beyond the basics is unnecessary
* It does tend to be a common staple of eng interviews

# Problem 1
* Find an item in a list
* See solution
* How long does this take?

# Big-Oh (Asymptotic Complexity)
* Relates solution time to "problem complexity"
* It's about the scalability of a solution
* "Problem complexity" usually means the number of items
 * E.g., the number of items in a list

* Our find function has _time complexity_ 'O(n)'
* 'n' represents the number of items
* the search time is _linear_ in the number of items
 * potentially, we must consider every item in the list

# A quick guide to common time complexities
* O(1): ideal
 * example: lookup in a hash map
* O(log(n)): fast
 * example: search in a sorted list
* O(n): good
 * example: search in an unsorted list
* O(nlog(n)): slow
 * sorting a list
* O(n**2): bad
 * Considering every pair
* O(2**n): intractable
 * Consider every subset
* O(n!): worst-case
 * Consider every _permutation_
