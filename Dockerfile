from continuumio/anaconda3:latest
RUN pip install torch 
ARG BRANCH=master
RUN git clone -b $BRANCH https://github.com/isaacmg/ParlAI
WORKDIR "ParlAI"
RUN pip install spacy 
RUN python -m spacy download en_core_web_sm
RUN pip install -U memory_profiler
RUN python setup.py install
