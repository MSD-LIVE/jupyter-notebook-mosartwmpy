# To test this container locally, run:
# docker build -t mosartwmpy .
# docker run --rm -p 8888:8888 mosartwmpy

FROM ghcr.io/msd-live/jupyter/python-notebook:latest

USER jovyan
RUN mkdir -p /home/jovyan/zoewashere/matplotlib

# Install mosartwmpy
RUN pip install --upgrade pip
RUN pip install mosartwmpy

# Install tutorial data.
RUN python -c "from mosartwmpy.utilities.download_data import download_data; download_data('tutorial');"

