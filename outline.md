# Why Algorithms?
* Many companies quiz you on these
* On the job, knowledge of algorithms beyond the basics is unnecessary
* It does tend to be a common staple of eng interviews

# Typical Interview process
1. Phone screen with recruiter
2. Maybe two technical phone screens
3. Often a coding test
4. In office interviews

# Algorithms interview advice
* Often there's an obvious 'naive' solution
* I start by describing that, in case I crash and burn trying to think
  of something better
* I then start thinking about how the constraints of this particular
  problem might let me do better
* Talk through the problem so the interviewer sees what you're
  thinking
* These problems are expected to be tough; the interviewer will talk
  to you as you discuss the problem, so listen for hints

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

# Vector
* index was slow for lists because we had to follow every link
* A vector holds all its items in a single block of memory (_store_),
  one next to the other
* Each entry has a fixed width, or _size_, which is the number of
  bytes to store the object
* If the store starts at memory address _p_, then the _i_th element is
  at address _p + (i * size(item))_
* Any address can be loaded in _O(1)_ time, so index is _O(1)_
* It's not vital to know the details of a vector implementation, but
  a little understanding will help you remember its performance

# Vector mutations
* Because of how computers work, it is difficult to resize the store
 * We have to allocate an entirely new store, then copy everything
   over
* Resize has what time complexity?
* If the _store_ is at full capacity, and we want to push\_front or
  push\_back, we have to do a resize
* To avoid resizes, it's typical to _double_ the store size on every
  resize
* So if we have to copy _n_ elements on this resize, we increase the
  store size to _2n_, which buys us another _n_ insertions before the
  next resize
* Which brings us to _amortized_ time complexity: which is _O(1)_

# Sets
* A set has three basic operations:
 * Insertion
 * Lookup
 * Iteration
* Two major kinds: tree set and hash set

# Tree set
* A tree is like a list, but a _parent_  can have multiple _children_
* Nodes with no children are called _leaves_; the parent of everything
  is the _root_
* The relationship between parent-child and siblings defines the tree
  properties
* In a tree set, each parent has at most two children; a _left_ and
  _right_ child
* The left child must be less than the parent, the right child is
  greater than the parent
* How would you search/insert into the tree?

# Tree set performance
* Operations are defined by the _depth_ of the tree
* Trivial worst case: every node has one child, _O(n)_ depth
* Best case: every node has two children; how deep?
* _O(log(n))_
 * algorithms that consider half the items at each step are typically
   logarithmic
* Self-balancing trees do some magic to ensure the tree depth is
  _O(log(n))_
 * you don't need to know how these work; just that they exist

# Hash set
* A _hash function_ maps an item to an almost random number
 * The hash id is not guaranteed unique, but hash _collisions_ should
   be rare
* A hash set has a store, each element in the store is called a
  _bucket_
* Values are mapped to buckets by their hash id, _modulo_ the size of
  the store
* Buckets may contain more than one item, if hashes collide
* As we add more items buckets fill up

# Hash set performance
* It is typical to keep the hash set at a fix _load_, or num\_items /
  num\_buckets
* Periodic resizes take _O(n)_ time, but we repeat the doubling trick
* Hash calculation takes _O(1)_, bucket lookup takes _O(1)_
* On average, bucket contains _load_ items, which is _average_ _O(1)_

# Sets vs maps
* Both a tree set and hash set can be transformed into a map
* Maps keys to values
* Store the keys as usual, and keep an extra reference to the value

# A quick overview to common time complexities
* O(1); "constant" time; ideal; ex: lookup in a hash map
* O(log(n)); "logarithmic" time; fast; ex: search in a sorted list
 * consider half the items each time
* O(n); good; ex: search in an unsorted list, consider every _item_
* O(nlog(n)); slow; ex: sorting a list
* O(n**2); "quadratic" time; bad; ex: considering every _pair_
* O(2**n); "exponential" time; intractable; ex: consider every _subset_
* O(n!); "factorial" time; worst-case; ex: consider every _permutation_
