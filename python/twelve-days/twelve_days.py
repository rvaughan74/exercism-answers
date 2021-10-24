"""Twelve Days of Christmas in [python]
"""


def recite(start_verse, end_verse):
    """recite the verses of the Twelve Days of Christmas.

    Args:
        start_verse (int): Verse to start at (inclusive).
        end_verse (int): Verse to end at (inclusive).

    Returns:
        list(str): List of the verses of the Twelve Days of Christmas.
    """
    gifts = [
        # (First day of gift, the gift)
        ("first", "a Partridge in a Pear Tree."),
        # place and for and a Partidge... here in case recite(1,1)
        ("second", "two Turtle Doves, and "),
        ("third", "three French Hens, "),
        ("fourth", "four Calling Birds, "),
        ("fifth", "five Gold Rings, "),
        ("sixth", "six Geese-a-Laying, "),
        ("seventh", "seven Swans-a-Swimming, "),
        ("eighth", "eight Maids-a-Milking, "),
        ("ninth", "nine Ladies Dancing, "),
        ("tenth", "ten Lords-a-Leaping, "),
        ("eleventh", "eleven Pipers Piping, "),
        ("twelfth", "twelve Drummers Drumming, "),
    ]

    # Adjust from human to 0 indexed lists
    start_verse -= 1
    result = []

    for i in range(start_verse, end_verse):
        verse = "On the {} day of Christmas my true love gave to me: ".format(
            gifts[i][0])
        # Get all the gifts
        gifted = gifts[0:i+1]
        # Reverse and slice of the day we first get them
        gifted = [gift[1] for gift in gifted[::-1]]
        verse += "".join(gifted)
        result.append(verse)

    return result


if __name__ == "__main__":
    print(recite(1, 3))
