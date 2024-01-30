FROM jupyter/scipy-notebook

#RUN mkdir my-model
#ENV MODEL_DIR=/home/jovyan/my-model
#ENV MODEL_FILE_LDA=clf_lda.joblib
#ENV MODEL_FILE_NN=clf_nn.joblib

RUN pip install joblib

COPY breast_cancer.csv ./breast_cancer.csv
#COPY test.csv ./test.csv

COPY train.py ./train.py
COPY app.py ./app.py

RUN python3 train.py
