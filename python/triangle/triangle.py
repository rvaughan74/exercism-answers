"""
Answer for exercism.org python learning track question
https://exercism.org/tracks/python/exercises/triangle
"""


def equality(sides):
    """Checks equality of the triangle such that a + b ≥ c and
       b + c ≥ a and a + c ≥ b are all True.

    Args:
        sides (list(int or float)): List of side lengths

    Returns:
        boolean: Result of all the equation checks. True if
        equality matched, false otherwise.
    """
    perms = [
        [sides[0], sides[1], sides[2]],
        [sides[1], sides[2], sides[0]],
        [sides[0], sides[2], sides[1]]
    ]

    result = True

    for p in perms:
        result = result and (p[0] + p[1] >= p[2])

    return result


def equilateral(sides):
    """Determine if the sides of the given triangle form an equilateral
    triangle.

    Args:
        sides (list(int or float)): List of side lengths

    Returns:
        boolean: Returns true if the triangle is equilateral. False otherwise.
    """
    if 0 in sides:
        return False

    return sides.count(sides[0]) == 3


def isosceles(sides):
    """Determine if the sides of the given triangle form an isoceles
    triangle.

    Args:
        sides (list(int or float)): List of side lengths

    Returns:
        boolean: Returns true if the triangle is isoceles. False otherwise.
    """
    if 0 in sides:
        return False

    if not equality(sides):
        return False

    for n in sides:
        if sides.count(n) >= 2:
            return True

    return False


def scalene(sides):
    """Determine if the sides of the given triangle form a scalene
    triangle.

    Args:
        sides (list(int or float)): List of side lengths

    Returns:
        boolean: Returns true if the triangle is scalene. False otherwise.
    """
    if 0 in sides:
        return False

    if not equality(sides):
        return False

    for n in sides:
        if sides.count(n) > 1:
            return False

    return True


if __name__ == "__main__":
    print(equilateral([2, 2, 2]))
    print(isosceles([3, 4, 4]))
    print(scalene([5, 4, 6]))
