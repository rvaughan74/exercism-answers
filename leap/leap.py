"""Leap solution [python]
"""


def leap_year(year):
    """Returns if the given year is a leap year or not.

    Args:
        year (int): The year to check

    Returns:
        [boolean]: True for leap year, false for non-leap year.
    """

    result = False
    if year % 4 == 0:
        if year % 100 != 0:
            result = True
        elif year % 400 == 0:
            result = True

    return result
