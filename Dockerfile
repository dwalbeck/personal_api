FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY . /app

RUN pip install uv

RUN pip install -r requirements.txt
#RUN uv pip install -r pyproject.toml --system

#WORKDIR /app/src

EXPOSE 8000

CMD ["npm", "run", "dev"]
#CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
