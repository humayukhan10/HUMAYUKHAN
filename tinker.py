import tkinter as tk
from tkinter import messagebox

# Function to display greeting
def say_hello():
    name = entry_name.get()
    if name:
        messagebox.showinfo("Greeting", f"Hello, {name}! Welcome to Tkinter 😊")
    else:
        messagebox.showwarning("Input Error", "Please enter your name!")

# Create main window
root = tk.Tk()
root.title("Tkinter Example")
root.geometry("300x200")
root.config(bg="#e0f7fa")

# Label
label = tk.Label(root, text="Enter your name:", font=("Arial", 12), bg="#e0f7fa")
label.pack(pady=10)

# Entry field
entry_name = tk.Entry(root, font=("Arial", 12))
entry_name.pack(pady=5)

# Button
button_greet = tk.Button(root, text="Say Hello", font=("Arial", 12), bg="#00796b", fg="white", command=say_hello)
button_greet.pack(pady=20)

# Run the GUI loop
