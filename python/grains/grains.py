"""grains solutions [python]
"""


def square(number):
    """Returns the number of grains on the specified square.

    Args:
        number (int): The square to get the number of grains for.

    Raises:
        Exception: [description]

    Returns:
        int: The number of grains on the square.
    """

    if number > 64 or number <= 0:

        raise ValueError("square must be between 1 and 64")

    return 2**(number - 1)


def total():
    """Returns the number of grains on the entire board.

    Returns:
        int: The number of grains on the board.
    """

    grains = 0
    for i in range(0, 64):
        grains += 2 ** i

    return grains
