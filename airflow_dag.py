from airflow import DAG
from airflow.operators.dummy_operator import DummyOperator
from airflow.operators.python_operator import PythonOperator
from datetime import datetime

def print_hello():
    print("Hello from Airflow DAG!")

# Define Airflow DAG
dag = DAG('big_data_streaming_pipeline', description='Big Data Streaming DAG',
          schedule_interval='@hourly', start_date=datetime(2023, 10, 11), catchup=False)

# Define tasks
start = DummyOperator(task_id='start', dag=dag)
hello_task = PythonOperator(task_id='hello_task', python_callable=print_hello, dag=dag)

# Define task sequence
start >> hello_task
