FROM ghcr.io/msd-live/jupyter/python-notebook:latest


# Install mosartwmpy
RUN pip install --upgrade pip
RUN pip install mosartwmpy

# Install tutorial data.

# To test this container locally, run:
# docker build -t mosartwmpy .
# docker run --rm -p 8888:8888 mosartwmpy

# RUN mkdir -p /data
COPY notebooks /home/jovyan/notebooks