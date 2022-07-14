# loading data for card holder 2 and 18 from the database

query = """
    SELECT transaction.date, transaction.amount, card_holder.id
    FROM transaction
    JOIN credit_card ON credit_card.card = transaction.card
    JOIN card_holder ON card_holder.id = credit_card.id_card_holder
    WHERE card_holder.id IN (2,18)
"""


# loading data of daily transactions from jan to jun 2018 for card holder 25

query = """
    SELECT transaction.date, transaction.amount, card_holder.id
    FROM transaction
    JOIN credit_card ON credit_card.card = transaction.card
    JOIN card_holder ON card_holder.id = credit_card.id_card_holder
    WHERE card_holder.id IN (25)
    AND transaction.date BETWEEN '2018-01-01' AND '2018-07-01 ' 