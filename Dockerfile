FROM python:3.7
WORKDIR src/
COPY . .
RUN pip install jupyter
RUN pip install pandas
RUN pip install sklearn
RUN pip install matplotlib
RUN pip install wordcloud
RUN pip install nltk
RUN pip install seaborn
RUN pip install -U pip setuptools wheel
RUN pip install -U spacy
RUN pip install -U gensim
RUN python -m spacy download pt_core_news_sm

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]


#docker build -f Dockerfile -t fprintes/jupyter .
#docker run -p 8888:8888 -v "C:\Users\Lenovo\Desktop\cursos\classifica_noticias:/var/www" -w "/var/www" fprintes/jupyter