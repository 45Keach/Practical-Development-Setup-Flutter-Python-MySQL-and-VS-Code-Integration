# Task 3 — Python Environment & Dependency Isolation

### Linux/macOS
```bash
mkdir python_setup_lab
cd python_setup_lab
python3 -m venv venv
source venv/bin/activate
python -m pip install requests
python -m pip list
python -m pip freeze > requirements.txt
cat requirements.txt
```

### Windows PowerShell
```powershell
mkdir python_setup_lab
cd python_setup_lab
py -m venv venv
.\venv\Scripts\Activate.ps1
python -m pip install requests
python -m pip list
python -m pip freeze > requirements.txt
Get-Content requirements.txt
```

Paste the exact commands/output from your own machine into the submitted evidence.