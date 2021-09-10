"""little-sisters-essay solutions [python]
"""


def capitalize_title(title):
    """Convert given string to Title Case.

    Args:
        title (str): title string that needs title casing

    Returns:
        str: title string in title case (first letters capitalized)
    """

    return title.title()


def check_sentence_ending(sentence):
    """Checks that the given sentence ends with a period.

    Args:
        sentence (str): a sentence to check.

    Returns:
        bool: True if punctuated correctly with period, False otherwise.
    """

    return sentence.endswith(".")


def clean_up_spacing(sentence):
    """Clean up leading and trailing spaces from the given string.

    Args:
        sentence (str): a sentence to clean of leading and trailing space characters.

    Returns:
        str: a sentence that has been cleaned of leading and trailing space characters.
    """

    return sentence.strip()


def replace_word_choice(sentence, old_word, new_word):
    """For the given sentence replace old_word with new_word.

    Args:
        sentence (str): a sentence to replace words in.
        old_word (str): word to replace
        new_word (str): replacement word

    Returns:
        str: input sentence with new words in place of old words
    """

    return sentence.replace(old_word, new_word)
