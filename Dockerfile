from continuumio/anaconda3:latest
RUN pip install torch 
ARG BRANCH=ms_marco_2.1
RUN git clone -b $BRANCH https://github.com/isaacmg/ParlAI
WORKDIR "ParlAI"
RUN apt-get update \
    && apt-get install -y \
     build-essential \
     python-dev \
     python-h5py
RUN pip install spacy 
RUN python -m spacy download en_core_web_sm
RUN python -m spacy download en
RUN pip install -U memory_profiler
RUN python setup.py install
