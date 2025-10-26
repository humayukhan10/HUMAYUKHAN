import tkinter as tk
from tkinter import messagebox

# Create main window
root = tk.Tk()
root.title("Simple Calculator")
root.geometry("350x250")

# Functions for operations
def add():
    try:
        result = float(num1.get()) + float(num2.get())
        result_label.config(text=f"Result: {result}")
    except ValueError:
        messagebox.showerror("Error", "Please enter valid numbers")

def sub():
    try:
        result = float(num1.get()) - float(num2.get())
        result_label.config(text=f"Result: {result}")
    except ValueError:
        messagebox.showerror("Error", "Please enter valid numbers")

def mul():
    try:
        result = float(num1.get()) * float(num2.get())
        result_label.config(text=f"Result: {result}")
    except ValueError:
        messagebox.showerror("Error", "Please enter valid numbers")

def div():
    try:
        n2 = float(num2.get())
        if n2 == 0:
            messagebox.showerror("Error", "Cannot divide by zero")
            return
        result = float(num1.get()) / n2
        result_label.config(text=f"Result: {result}")
    except ValueError:
        messagebox.showerror("Error", "Please enter valid numbers")

# Labels and Entries
tk.Label(root, text="Enter First Number:").pack(pady=5)
num1 = tk.Entry(root)
num1.pack()

tk.Label(root, text="Enter Second Number:").pack(pady=5)
num2 = tk.Entry(root)
num2.pack()

# Frame for buttons (to keep them in one line)
button_frame = tk.Frame(root)
button_frame.pack(pady=10)

# Buttons for operations (in one line)
tk.Button(button_frame, text="Add", width=8, command=add).grid(row=0, column=0, padx=5)
tk.Button(button_frame, text="Subtract", width=8, command=sub).grid(row=0, column=1, padx=5)
tk.Button(button_frame, text="Multiply", width=8, command=mul).grid(row=0, column=2, padx=5)
tk.Button(button_frame, text="Divide", width=8, command=div).grid(row=0, column=3, padx=5)

# Result label
result_label = tk.Label(root, text="Result: ")
result_label.pack(pady=10)

# Run the main loop
root.mainloop()
