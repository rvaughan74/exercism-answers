def response(hey_bob):

    result = "Whatever."

    if hey_bob.strip() == "":
        result = "Fine. Be that way!"
    else:
        if hey_bob.strip()[-1] == "?":
            result = "Sure."

        letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
                   "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V",
                   "W", "X", "Y", "Z"]
        upper_hey = hey_bob.upper()
        contains_letters = len([l for l in upper_hey if l in letters]) > 0

        if hey_bob == upper_hey and contains_letters:
            result = "Whoa, chill out!"

            if hey_bob.strip()[-1] == "?":
                result = "Calm down, I know what I'm doing!"

    return result
