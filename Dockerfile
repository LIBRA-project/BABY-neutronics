FROM continuumio/miniconda3

RUN conda config --add channels conda-forge

RUN conda install mamba && \
    mamba install -c conda-forge openmc && \
    mamba install -c fusion-energy -c cadquery -c conda-forge cad_to_dagmc

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y