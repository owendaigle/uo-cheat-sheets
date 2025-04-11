# 1. Find regex expressions for the following:

1.All even-length strings over the alphabet {a,b}.
2.All strings over the alphabet {a,b} with odd numbers of a’s.
3.All strings over the alphabet {a,b} with even numbers of b’s.
4.All strings over the alphabet {a,b} that start and end with different symbols.
5. All strings over the alphabet {a, b} that do not contain the substring aab and end with bb.
6. All binary numbers greater than 110011.
7. All strings of the kind ISX where I is an integer number, S is a non-zero length string composed of upper-case or lower-case alphabets and X is an integer greater than 3 and less than 45.

# 2. convert regex to NFA
a) (b|c)*a(a|c)*
b) c*|(a+|(b|c))*b*
c) abb(ab)*(a*b*c*)

# 3. convert NFA to DFA
diagrams found in `nfa.png`