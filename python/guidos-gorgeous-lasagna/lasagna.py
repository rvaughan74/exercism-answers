"""lasagna.py - methods and constants to solve the exercism.io
    "Guido's Gorgeous Lasagna" problem.
"""
EXPECTED_BAKE_TIME = 40  # Expected time to bake in minutes
PREPARATION_TIME = 2  # Preparation time for one layer in minutes


def bake_time_remaining(elapsed_bake_time):
    '''
    :param elapsed_bake_time: int baking time already elapsed
    :return: int remaining bake time derived from 'EXPECTED_BAKE_TIME'

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    '''

    return EXPECTED_BAKE_TIME - elapsed_bake_time


def preparation_time_in_minutes(number_of_layers):
    """preparation_time_in_minutes: Calculate the amount of time to prepare a
    lasagne with number_of_layers.

    Args:
        number_of_layers (int): The number of layers to use in calculating
        preparation_time_in_minutes.

    Returns:
        int: preparation_time_in_minutes = number_of_layers * PREPARATION_TIME
    """
    return number_of_layers * PREPARATION_TIME


def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """elapsed_time_in_minutes - The total time in minutes passed since the
    begining of preparation.

    Args:
        number_of_layers (int): The number of layers to calculate preparation
        time with.
        elapsed_bake_time (int): The amount of time (in minutes) we have spent
        baking.

    Returns:
        int: The sum of the preparation_time_in_minutes + elapsed_bake_time
        (in minutes).
    """
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time
