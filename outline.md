# Why Algorithms?
* Many companies quiz you on these
* On the job, knowledge of algorithms beyond the basics is unnecessary
* It does tend to be a common staple of eng interviews

# find_item
* Find an item in a list
* See solution
* We'll be answering the question: How long does this solution take?

# Big-Oh (Asymptotic Complexity)
* Expresses solution time as a function of _problem complexity_
* Problem complexity usually means the number of items
* Big-Oh is not about _absolute_ solution time (5sec, 10min, 1hr)
* Big-Oh is about _scalability_: how the solution time scales as the
  problem instance gets harder

# find_item complexity
* What is the _problem complexity_ a function of?
 * The number of items in the list, which we call _n_
* As a function of _n_, how long does this algorithm take?
 * In the worst case, we must consider every item in the list
 * There are _n_ items
 * We say the _time complexity_ is _O(n)_, or linear

# Big-Oh (cont.)
* We usually mostly care about the _worst case_ time complexity
* Time complexity is not measured in _time_, per se, but the number of
  _primitive operations_
  * Primitive operations are basic math (+, -, *, /), comparison,
    swapping
  * We assume all primitive operations take _constant time_, which
    we call _O(1)_
* If our algorithm takes _proportionally_ _n_ constant time
  operations, we call it _O(n)_

# Asymptotic behavior
* We don't care about the _exact number_ of operations, but the
  _scalability_ of a solution
  * Not about fast or slow, so much as will your algo explode when I
    throw big problems as it
* For instance, _O(n)_ time complexity means that if you double your
  problem size, your solution time will approximately double
* Asymptotic behavior is about behavior _in the limit_
  * For "large enough" problem instances, an asymptotically superior
    solution will eventually be faster

# Asymptotic behavior (cont.)
* We throw away all constants
  * If algo A always takes twice as long as algo B, they have the
    _same_ asymptotic time complexity
* We throw away _low order_ terms
  * O(n^2 + n) = O(n^2)
  * We care about the dominant behavior; for big enough problems,
    the lower order terms are negligible relative to higher
	order terms
  * Ex: when n=100, n^2=10,000

# find_min
* What _parameter_ expresses the problem size?
* What is the time complexity?
 * Hint: time complexity is normally in loops, since loops
   will take longer as you loop through more stuff

# find_two_min
* What _parameter_ expresses the problem size?
 * Still _n_; 2 is a fixed number
* How does this compare, by wall clock, to find_min?
* How does this compare, in Big-Oh, to find_min?
 * Both loop over _n_ items
 * find_two_min does about twice as much work per item
 * But more importantly, they both do a _constant_ amount of work per
   item

# find_k_min

# A quick overview to common time complexities
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
