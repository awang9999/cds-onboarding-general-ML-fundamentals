FROM python:3.8.12-slim-buster

ARG PORT=5000

ENV PIP_DEFAULT_TIMEOUT=100 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PIP_NO_CACHE_DIR=1 \
    POETRY_VERSION=1.1.13 \
    EXPOSED_PORT=$PORT

RUN pip install -U pip && pip install "poetry==$POETRY_VERSION"

WORKDIR /ml-tutorial
COPY poetry.lock pyproject.toml /ml-tutorial/

RUN apt-get update -y && apt-get install -y pandoc texlive-xetex texlive-fonts-recommended texlive-plain-generic
RUN poetry config virtualenvs.create false && poetry install --no-interaction --no-ansi --no-dev --no-root

COPY run_notebook.sh general_ml_solutions.ipynb /ml-tutorial/

RUN ipython kernel install --name ".venv" --user

EXPOSE $PORT
CMD ["bash", "run_notebook.sh"]
