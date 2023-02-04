FROM apache/airflow:2.3.3
COPY requirements.txt /requirements.txt
COPY .aws /home/airflow/.aws
COPY secrets /home/airflow/secrets
RUN pip install --user --upgrade pip
RUN pip install --no-cache-dir --user -r /requirements.txt
