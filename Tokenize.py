import nltk
from nltk.tokenize import word_tokenize ,sent_tokenize
from nltk.stem import PorterStemmer ,WordNetLemmatizer
from nltk.corpus import stopwords,wordnet
from nltk import pos_tag,ne_chunk


nltk.download('punkt')
nltk.download('stopwords')
nltk.download('averaged_perceptron_tagger')
nltk.download('maxent_ne_chunker')
nltk.download('words')
nltk.download('wordnet')







text = """
There was a poor family in Surat. Ronit lived there, and he was born on 25/11/2004. 
Ba was poor, and so was Dada. Kishanbhai was extremely poor, and his PAN number was AUWPX4080K. 
Rekhaben was the poorest of all. Even the car driver, maid, and gardener were poor. 
In summary, everyone in the family and around them was poor.
"""


sent=sent_tokenize(text)
word=word_tokenize(text)

swr=stopwords.words('english')
sw_rem=[]
#stopwords _removal
for i in word:
    if i.lower() not in swr:
        sw_rem.append(i)


#stemming

ps=PorterStemmer()
stemw=[]
#stemming
for i in word:
    stemw.append(ps.stem(i))


#Lemetization-->Going To Root

lemetizer=WordNetLemmatizer()
leme=[]
for i in word:
    leme.append(lemetizer.lemmatize(i))


#NER NAME ENTITY RECOGNIZATION WANT_POST TAGES

pos_tags=pos_tag(word)
name_entitiess=ne_chunk(pos_tags)

print(name_entitiess,"\n")

for i in word: 
    if isinstance(i,nltk.tree.Tree)==True: 
        name_entitiess.append(i) 

print(name_entitiess) 







