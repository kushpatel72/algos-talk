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

# find\_two\_min
* What _parameter_ expresses the problem size?
 * Still _n_; 2 is a fixed number
* How does this compare, by wall clock, to find_min?
* How does this compare, in Big-Oh, to find_min?
 * Both loop over _n_ items
 * find\_two\_min does about twice as much work per item
 * But more importantly, they both do a _constant_ amount of work per
   item

# find\_k\_min
* What _parameters_ express the problem size?
 * Both _n_, the number of elements, and _k_, the number of mins to
   find
* Outer loop: still _n_ times
* How much work _inside_ the loop?
 * min\_items.each\_with\_index.max hides a loop of size _k_
* Complexity: _O(nk)_ time
* We would say this algorithm is linear in both _n_ and _k_

# find\_zero\_sum\_pair
* Doubly nested for loop, each considers all _n_ elements
* Means O(n^2) time complexity
* As a practical matter, O(n^2) is not particularly scalable,
  quickly becomes intractable
* Algorithms that, worst-case, consider every pair, are all O(n^2)
* But there's a trick!

# find\_zero\_sum\_pair2
* Two _unnested_ for loops
* How much work is done inside the for loops?
 * Sneak peek: _O(1)_ (amortized) work
* Total work: _O(n)_

# Data structures
* The most primitive operations are really basic
* Data structures are the bigger building blocks
 * Ex: vector, list, hash and tree maps, heap
* Those are all the data structures you need to know for interviews
* On the job is even easier: heaps rarely come up

# Vectors and lists
* Operations:
 * index: find the _i_th item
 * push\_front: put an element on the front
 * push\_back: push an element to the back
* Vectors/lists have different time complexities for these operations
* You'll choose one over the other based on what you're going to do
  with it

# List
* A list is a chain of _nodes_
 * Each node holds an item, and possibly a reference to a next node
* You iterate through the list by starting from the _head_, or first
  node, and following the references
* index: takes time worst-case _O(n)_ to visit the last element,
  because you must visit every node
* push\_front: _O(1)_, since you just create a new head node, and link
  it to the old head
* push\_back: it already takes _O(n)_ time to traverse to the end
 * There's a list variant that holds a reference to both front and
   back of the list, in which case both push\_front and push\_back
   take _O(1)_; index still is _O(n)_ (why?)
* Question: how would you insert an item into the middle of a list?

# A quick overview to common time complexities
* O(1); "constant" time; ideal; ex: lookup in a hash map
* O(log(n)); "logarithmic" time; fast; ex: search in a sorted list
 * consider half the items each time
* O(n); good; ex: search in an unsorted list, consider every _item_
* O(nlog(n)); slow; ex: sorting a list
* O(n**2); "quadratic" time; bad; ex: considering every _pair_
* O(2**n); "exponential" time; intractable; ex: consider every _subset_
* O(n!); "factorial" time; worst-case; ex: consider every _permutation_
