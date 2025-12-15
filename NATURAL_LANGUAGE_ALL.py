
import nltk 
from nltk.stem import PorterStemmer 
stemmer = PorterStemmer() 

w = ['caresses', 'flies', 'dies', 'mules'] 
s=[] 
for i in w: 
    s.append(stemmer.stem(i)) 
para = ''' Natural language processing (NLP) is a field that focuses 
on making natural human language usable by computer programs.NLTK, 
or Natural Language Toolkit, is a Python package that you can use 
for NLP.''' 
sw=[] 
for i in w: 
    sw.append(stemmer.stem(i))


print(sw)     

"""
"""
import nltk 
from nltk.corpus import stopwords 
from nltk.tokenize import word_tokenize
para = "A planet is a large, rounded astronomical body that is  neither a star nor a stellar remnant." 
para_w = word_tokenize(para) 
stop_words = stopwords.words("english") 
para_swr = [] 
for w in para_w: 
    if w.lower() not in stop_words: 
        para_swr.append(w) 


        """

import nltk 
from nltk.stem import WordNetLemmatizer 
from nltk.tokenize import word_tokenize 
lemmr = WordNetLemmatizer() 
w = ['caresses', 'flies', 'dies', 'mules'] 
s=[] 
for i in w: 
    s.append(lemmr.lemmatize(i)) 
para = ''' Natural language processing (NLP) is a field that focuses 
on making natural human language usable by computer programs.NLTK, 
or Natural Language Toolkit, is a Python package that you can use 
for NLP.''' 
words = word_tokenize(para) 
sw=[] 
for i in w: 
    s.append(lemmr.lemmatize(i)) 
