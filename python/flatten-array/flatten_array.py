"""Solution for Flatten Array [python]
"""


def flatten(iterable):
    """flatten - recursively flatten the given iterable to list

    Args:
        iterable (list): The list to flatten

    Returns:
        list: The flattened list
    """
    result = []

    for i in iterable:
        if type(i) is list:
            add = flatten(i)
            result += add
        elif i is not None:
            result.append(i)

    return result
