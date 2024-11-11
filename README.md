
## 🧑🏻‍💻 SETUP FOR LOCAL DEVELOPMENT

### 1. GIT INSTALLATION
Please follow this documentation to install git on Windows: https://git-scm.com/download/win 

### 2. PYTHON INSTALLATION + VIRTUAL ENV
Check this link to install python on your machine: https://www.python.org/downloads/windows/ATION \
Recommended version: **3.9.XX**

Create a virutal environment and activate it with the following commands: \
`python -m venv my_env_name` \
 `my_env_name\Scripts\activate`

### 3. VSCODE INSTALLATION
https://code.visualstudio.com/docs/setup/windows

### 4. GCLOUD CLI
Please follow this documentation to install the gcloud cli on your machine: https://cloud.google.com/sdk/docs/install#windows \

After successfully installed  the gcloud cli, run this command on your terminal:
`gcloud init`

Connect with your personal Credentials.

### 5. PREPARE DBT PLAYGROUND
You are almost ready to use dbt playground… oh wait… where is it ? \
**Start your preferred shell (git bash for Windows, terminal)**

**Create dbt main folder** \
```
mkdir dbt
```

**Change WORKDIR** \
```
cd dbt
```

**Clone the dbt_elevate_playground repository**
```
git clone https://github.com/elevate-agency-data/dbt_elevate_playground
```

**Install dbt packages**
```
cd dbt_elevate_playground
dbt deps
```
