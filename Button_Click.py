import tkinter as tk

def onclick():
    label2.config(text="Button is Clicked")  # ✅ Fixed config syntax and label name

root = tk.Tk()
root.title("Button Click Example")
root.geometry("300x200")

label1 = tk.Label(root, text="Hello!")
label1.pack(pady=10)

label2 = tk.Label(root, text="Waiting for click...")
label2.pack(pady=10)

btn = tk.Button(root, text="Click Me", command=onclick)  # ✅ Added command for button
btn.pack(pady=10)

root.mainloop()
