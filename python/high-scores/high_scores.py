"""high scores - [python]
"""


def latest(scores):
    """Show the latest score given

    Args:
        scores (list[int]): The list of scores

    Returns:
        int: The latest score
    """
    return scores[-1]


def personal_best(scores):
    """Shows the personal best score in the list of scores

    Args:
        scores (list[int]): The list of scores

    Returns:
        int: The best score in the list of scores
    """
    best = 0
    for n in scores:
        if n > best:
            best = n

    return best


def personal_top_three(scores):
    """Shows a list of the top three best scores in the scores list

    Args:
        scores (list[int]): The list of scores

    Returns:
        list[int]: A list of the three best scores in the list of scores
    """
    scores.sort()
    result = []
    for i in range(3):
        if scores:
            result.append(scores.pop())
    return result
