"""darts solutions [python]
"""
from math import sqrt


def score(x, y):
    """Score the dart throw.

    Args:
        x (int): x coordinate
        y (int): y coordinate

    Returns:
        int: The score of the throw.
    """

    result = 0

    circles = [(10, 1), (5, 5), (1, 10)]

    radius = sqrt(x**2 + y**2)

    for r, v in circles:
        if radius <= r:
            result = v

    return result
