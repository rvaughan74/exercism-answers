"""Making The Grade - [python]
"""


def round_scores(student_scores):
    """
    :param student_scores: list of student exam scores as float or int.
    :return: list of student scores *rounded* to nearest integer value.
    """

    return [int(round(n)) for n in student_scores]


def count_failed_students(student_scores):
    """
    :param student_scores: list of integer student scores.
    :return: integer count of student scores at or below 40.
    """

    result = 0

    for score in student_scores:
        if score <= 40:
            result += 1

    return result


def above_threshold(student_scores, threshold):
    """
    :param student_scores: list of integer scores
    :param threshold :  integer
    :return: list of integer scores that are at or above the "best" threshold.
    """

    results = []

    for score in student_scores:
        if score >= threshold:
            results.append(score)

    return results


def letter_grades(highest):
    """
    :param highest: integer of highest exam score.
    :return: list of integer score thresholds for each F-A letter grades.
    """
    results = []
    range_size = highest - 40
    step = int(round(range_size/4))
    for threshold in range(40, highest, step):
        results.append(threshold+1)

    return results[:4]


def student_ranking(student_scores, student_names):
    """
     :param student_scores: list of scores in descending order.
     :param student_names: list of names in descending order by exam score.
     :return: list of strings in format ["<rank>. <student name>: <score>"].
     """

    results = []
    for rank, name in enumerate(student_names):
        info = {"rank": rank+1, "name": name, "score": student_scores[rank]}
        string = "{rank}. {name}: {score}".format(**info)
        results.append(string)

    return results


def perfect_score(student_info):
    """
    :param student_info: list of [<student name>, <score>] lists
    :return: First [<student name>, 100] found OR "No perfect score."
    """

    result = []

    for sublist in student_info:
        if sublist[1] == 100:
            result = sublist
            break

    return result
