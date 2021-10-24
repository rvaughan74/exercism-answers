"""Solve the problems for currency-exchange.
"""


def exchange_money(budget, exchange_rate):
    """Get the value of budget exchanged into exchange_rate currency.

    Args:
        budget (float): amount of money you are planning to exchange.
        exchange_rate (float): unit value of the foreign currency.

    Returns:
        float: the value in the new currency.
    """

    return budget/exchange_rate


def get_change(budget, exchanging_value):
    """Calculate how much budget you will have left, after exchaging
    exchanging_value.

    Args:
        budget (float): amount of money you own.
        exchanging_value (int): amount of your money you want to exchange now.

    Returns:
        float: the amount of change to expect
    """

    return budget-exchanging_value


def get_value_of_bills(denomination, number_of_bills):
    """Calculate the value you have in denomination bills, given
    number_of_bills.

    Args:
        denomination (int): the value of a bill.
        number_of_bills (int): amount of bills you received.

    Returns:
        int: The value in bills you have.
    """

    return denomination*number_of_bills


def get_number_of_bills(budget, denomination):
    """Get the maximum number of bills in denomination for budget.

    Args:
        budget (float): the amount of money you are planning to exchange.
        denomination (int): the value of a single bill.

    Returns:
        int: the maximum number of denomination bills, obtained in budget.
    """

    return int(budget/denomination)


def exchangeable_value(budget, exchange_rate, spread, denomination):
    """Obtain the amount of exchanged value, expressed in denomination bills.

    Args:
        budget (float): the amount of your money you are planning to exchange.
        exchange_rate (float): the unit value of the foreign currency.
        spread (int): percentage that is taken as an exchange fee.
        denomination (int): the value of a single bill.

    Returns:
        int: the amount not exchanged.
    """

    spread_percent = 1+(spread/100)
    actual_exchange_rate = exchange_rate * spread_percent
    value_when_exchanged = exchange_money(budget, actual_exchange_rate)
    bills = get_number_of_bills(value_when_exchanged, denomination)
    return get_value_of_bills(denomination, bills)


def non_exchangeable_value(budget, exchange_rate, spread, denomination):
    """Obtain the amount of exchanged value, that is unable to be expressed in
    denomination bills.

    Args:
        budget (float): the amount of your money you are planning to exchange.
        exchange_rate (float): the unit value of the foreign currency.
        spread (int): percentage that is taken as an exchange fee.
        denomination (int): the value of a single bill.

    Returns:
        int: the amount not exchanged.
    """

    spread_percent = 1+(spread/100)
    actual_exchange_rate = exchange_rate * spread_percent
    value_when_exchanged = exchange_money(budget, actual_exchange_rate)
    bills = get_number_of_bills(value_when_exchanged, denomination)
    exchanged_value = get_value_of_bills(denomination, bills)
    return int(value_when_exchanged-exchanged_value)
