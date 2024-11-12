
## 🧑🏻‍💻 SETUP FOR LOCAL DEVELOPMENT (WIP)

### 1. GIT INSTALLATION
Please follow this documentation to install git on Windows: https://git-scm.com/download/win 

### 2. PYTHON INSTALLATION + VIRTUAL ENV
2.1 **Check this link to install python on your machine:** https://www.python.org/downloads/windows/ATION \
Recommended version: **3.9.XX**

2.2 **Create a virutal environment and activate it with the following commands:** 
```
python -m venv my_env_name
my_env_name\Scripts\activate
```

2.3 **Install dbt-bigquery module** 
```
pip or pip3 (depending on your pip version) install dbt-bigquery
```

2.4 **Check if dbt is installed correctly**
```
dbt --version 
```

### 3. VSCODE INSTALLATION
https://code.visualstudio.com/docs/setup/windows

### 4. GCLOUD CLI
Please follow this documentation to install the gcloud cli on your machine: https://cloud.google.com/sdk/docs/install#windows \

After successfully installed  the gcloud cli, run this command on your terminal:
`gcloud init`

Connect with your personal Credentials. \
Select the correct gcp_project which is **elevate-lab-eng-core**

Authenticate to GCP using gcloud:
```
gcloud auth application-default login
```

### 5. PREPARE DBT PLAYGROUND
You are almost ready to use dbt playground… oh wait… where is it ? \
**Start your preferred shell (git bash for Windows, terminal)**

5.1 **Create dbt main folder** 
```
mkdir dbt
```

5.2 **Change WORKDIR** 
```
cd dbt
```

5.3 **Clone the dbt_elevate_playground repository**
```
git clone https://github.com/elevate-agency-data/dbt_elevate_playground
```

5.4 **Install dbt packages**
```
cd dbt_elevate_playground
dbt deps
```
5.5 **Add your dbt profile: profiles.yml** \
Create a file profiles.yml file into your dbt folder dbt_elevate_playground as follow:
```
dbt_elevate_playground:
  target: dev
  outputs:
    dev:
      job_execution_timeout_seconds: 600
      job_retries: 1
      location: EU
      method: oauth
      project: elevate-eng-lab-core
      priority: interactive
      schema: dbt_dataset_test
      threads: 10
      type: bigquery
      maximum_bytes_billed: 100000000
```

Do not update the profiles.yml.

**Check if the dbt installation is ok** \
Under the folder dbt_elevate_playground, you can try this command:
```
dbt debug
```
If the connection is successfull, you should see this output on your terminal:
![image](https://github.com/user-attachments/assets/ef4e4350-df5d-4a0f-9b10-d51881158412)

### 6. RUN YOUR FIRST MODEL ! 
Run this command to trigger your first model
```
dbt run --select stg_test
```


