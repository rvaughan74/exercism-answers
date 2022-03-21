"""
This exercise stub and the test suite contain several enumerated constants.

Since Python 2 does not have the enum module, the idiomatic way to write
enumerated constants has traditionally been a NAME assigned to an arbitrary,
but unique value. An integer is traditionally used because it’s memory
efficient.
It is a common practice to export both constants and functions that work with
those constants (ex. the constants in the os, subprocess and re modules).

You can learn more here: https://en.wikipedia.org/wiki/Enumerated_type
"""

# Possible sublist categories.
# Change the values as you see fit.
SUBLIST = 1
SUPERLIST = 2
EQUAL = 3
UNEQUAL = 4


def sublist(list_one, list_two):
    """Determine if list_one is EQUAL, UNEQUAL, SUBLIST, or SUPERLIST of list_two

    Args:
        list_one (list): A list to compare to
        list_two (list): A list to compare to

    Returns:
        int: Returns SUBLIST -> 1, SUPERLIST -> 2, EQUAL -> 3, UNEQUAL -> 4
    """
    result = None
    larger = []
    smaller = []

    # EQUAL
    if len(list_one) == len(list_two):
        if list_one in [list_two[::]]:
            return EQUAL

    # SUBLIST
    if len(list_one) < len(list_two):
        smaller = list_one
        larger = list_two
        result = SUBLIST

    # SUPERLIST
    if len(list_one) > len(list_two):
        smaller = list_two
        larger = list_one
        result = SUPERLIST

    for i in range(len(larger)):
        if smaller in [larger[i:i+len(smaller)]]:
            return result

    return UNEQUAL


if __name__ == "__main__":
    print(sublist([], []) == EQUAL)
    print(sublist([], [1, 2, 3]) == SUBLIST)
    print(sublist([1, 2, 3], []) == SUPERLIST)
    print(sublist([1, 2, 3], [1, 2, 3]) == EQUAL)
    print(sublist([1, 2, 3], [2, 3, 4]) == UNEQUAL)
    print(sublist([1, 2, 5], [0, 1, 2, 3, 1, 2, 5, 6]) == SUBLIST)
    print(sublist([1, 1, 2], [0, 1, 1, 1, 2, 1, 2]) == SUBLIST)
    print(sublist([0, 1, 2], [0, 1, 2, 3, 4, 5]) == SUBLIST)
    print(sublist([2, 3, 4], [0, 1, 2, 3, 4, 5]) == SUBLIST)
    print(sublist([3, 4, 5], [0, 1, 2, 3, 4, 5]) == SUBLIST)
    print(sublist([0, 1, 2, 3, 4, 5], [0, 1, 2]) == SUPERLIST)
    print(sublist([0, 1, 2, 3, 4, 5], [2, 3]) == SUPERLIST)
    print(sublist([0, 1, 2, 3, 4, 5], [3, 4, 5]) == SUPERLIST)
    print(sublist([1, 3], [1, 2, 3]) == UNEQUAL)
    print(sublist([1, 2, 3], [1, 3]) == UNEQUAL)
    print(sublist([1, 2], [1, 22]) == UNEQUAL)
    print(sublist([1, 2, 3], [3, 2, 1]) == UNEQUAL)
    print(sublist([1, 0, 1], [10, 1]) == UNEQUAL)
    print(len(set([SUBLIST, SUPERLIST, EQUAL, UNEQUAL])) == 4)  # WTF
    print(sublist(["a c"], ["a", "c"]) == UNEQUAL)
    print(
        sublist(
            list(range(1000)) * 1000 + list(range(1000, 1100)),
            list(range(900, 1050)),
        )
        ==
        SUPERLIST
    )
    print(
        sublist(list(range(3, 200, 3)), list(range(15, 200, 15))) == UNEQUAL
    )
