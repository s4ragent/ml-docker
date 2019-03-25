# Copyright (c) Niels Borie.

FROM nielsborie/ml-docker

LABEL maintainer="s4ragent"

USER root

#RUN $CONDA_DIR/bin/python -m pip install --upgrade mpld3
RUN $CONDA_DIR/bin/python -m pip install kaggle \
					 feather-format \
					 flake8
# clean up pip cache
RUN rm -rf /root/.cache/pip/*
