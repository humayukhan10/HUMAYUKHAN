def Bot():
 print("Welcome to Bot â€“ your AI Ethics assistant!")
 print("Ask me anything related to AI Ethics.")
 print("Type 'exit' to quit.\n")
    
while True:
    print("=====================================================================")
    user_input =input("You:")
    user_input =user_input.lower().strip()
print("=====================================================================")
        
if user_input == "exit":
 print("Bot: Thank you for learning responsibly. Goodbye!")
 break
 elif "ethics" in user_input:
 print("Bot: AI Ethics is the study of moral issues and responsibilities surrounding AI syst
 elif "bias" in user_input:
 print("Bot: Bias in AI occurs when systems make unfair decisions due to biased training dat")
 elif "privacy" in user_input:
 print("Bot: AI can threaten privacy by collecting or analyzing personal data without consen")
 elif "accountability" in user_input:
 print("Bot: Accountability in AI means making sure someone is responsible for the decisions")
 elif "explainability" in user_input or "why explainable" in user_input:
 print("Bot: Explainability ensures humans can understand and trust AI decisions, especially")
 elif "fairness" in user_input:
 print("Bot: Fairness in AI means treating all individuals and groups equitably, without dis")
 elif "ai winter" in user_input:
 print("Bot: An AI Winter is a period when interest and funding in AI decrease due to unmet")
elif "turing test" in user_input:
 print("Bot: The Turing Test checks if a machine can mimic human responses well enough to be")
 else:
 print("Bot: I don't have a response for that. Please ask about topics relat")



if __name__ == "__main__":
 Bot()
