FROM jupyter/pyspark-notebook:latest
MAINTAINER Nathan Lam

RUN pip install graphviz
RUN pip install librosa
#RUN pip install keras
#RUN pip install tensorflow
#RUN pip install tensorflow-gpu

RUN pip install jupyter_contrib_nbextensions

USER root

RUN jupyter contrib nbextension install --system
RUN jupyter nbextension enable codefolding/main
RUN jupyter nbextension enable execute_time/ExecuteTime

RUN apt-get update
RUN apt-get install -y graphviz
