import inflect

num=int(input("Enter A Number "))

p = inflect.engine()

word_form = p.number_to_words(num)
print(f"The number {num} in words is: {word_form}")
