import random

def print_welcome_message():
    """Prints the initial welcome message with the game's storyline."""
    print("Welcome, adventurer! You've entered the Lost Temple in search of the legendary treasure. 🏰💎")
    print("The treasure chest is locked with a secret number. Guess the right number to unlock it!")
    print("Be careful... Wrong guesses may cost you the treasure!⏳")
    print("\nYou have 10 attempts to guess the correct number. Good luck!\n")

def get_player_guess():
    """Prompts the player to guess a number between 1 and 100 and validates the input."""
    while True:
        try:
            guess = int(input("Guess the secret number between 1 and 100: "))
            if 1 <= guess <= 100:
                return guess
            else:
                print("Please guess a number between 1 and 100.")
        except ValueError:
            print("Invalid input! Please enter an integer.")

def provide_feedback(guess, number_to_guess):
    """Provides feedback to the player based on their guess."""
    if guess < number_to_guess:
        print("Your guess is too low... The treasure chest remains locked. Try again!")
    elif guess > number_to_guess:
        print("Your guess is too high... The treasure chest remains locked. Try again!")
    else:
        print(f"Congratulations! You've unlocked the treasure chest with the number {number_to_guess}! 🎉🏆")

def play_game():
    """Runs the entire game, allowing the player to guess the number."""
    number_to_guess = random.randint(1, 100)
    max_tries = 10
    guesses_taken = 0

    print_welcome_message()

    while guesses_taken < max_tries:
        guess = get_player_guess()
        guesses_taken += 1
        provide_feedback(guess, number_to_guess)

        if guess == number_to_guess:
            print(f"You've claimed the legendary treasure in {guesses_taken} attempts! 💰💎")
            break
    else:
        print(f"\nOh no! You've run out of attempts. The treasure chest remains locked... 😔")
        print("Your adventure ends here, but the treasure remains hidden... for now. Try again! ⚔️")

if __name__ == "__main__":
    play_game()
