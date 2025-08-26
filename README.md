https://roadmap.sh/projects/nginx-log-analyser
# Nginx Log Analyser

A simple shell script to analyze **Nginx access logs** and extract useful statistics such as:

- Top 5 IP addresses with the most requests
- Top 5 most requested paths
- Top 5 response status codes
- Top 5 user agents

This project is intended to help practice basic **Bash scripting** and **log analysis** from the command line.

---

## 📦 Requirements
- Linux / macOS environment (or WSL on Windows)
- `bash`
- `awk`, `sort`, `uniq`, `head` (pre-installed on most systems)
- Git (if cloning the repository)

---

## 🚀 How to Run

1. **Clone the repository**
   ```bash
   git clone https://github.com/AbdElrahman-Taha-99/Nginx-Log-Analyser.git
   cd Nginx-Log-Analyser
2. **Make the script executable**
   ```bash
   chmod +x analyser.sh
3. **Run the script**
   ```bash
   ./analyser.sh
4. **Enter the log file path when prompted**
   ```bash
   Please enter the log file path: nginx-access.log

## 📊 Example Output
```yaml
Top 5 IP addresses with the most requests:
178.128.94.113 - 1087 requests
142.93.136.176 - 1087 requests
138.68.248.85 - 1087 requests
159.89.185.30 - 1086 requests
86.134.118.70 - 277 requests

Top 5 most requested paths:
/v1-health - 4560 requests
/ - 270 requests
/v1-me - 232 requests
/v1-list-workspaces - 127 requests
/v1-list-timezone-teams - 75 requests

Top 5 response status codes:
200 - 5740 requests
404 - 937 requests
304 - 621 requests
400 - 192 requests
"-" - 31 requests

Top 5 user agents:
DigitalOcean - 4347 requests
Mozilla/5.0 - 513 requests
Custom-AsyncHttpClient - 294 requests
