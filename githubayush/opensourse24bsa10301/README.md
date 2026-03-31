
# Open Source Software Audit — Git

## 👨‍🎓 Student Details
- **Name:** Ayush Saxena  
- **Course:** Open Source Software (OSS NGMC)  
- **Project:** Open Source Audit Capstone  
- **Chosen Software:** Git  

---

## 📌 Project Overview
This project is a structured audit of the open-source software **Git**.  
It explores Git’s origin, license, philosophy, Linux footprint, and ecosystem, along with practical implementation using Linux shell scripting.

The project demonstrates both **conceptual understanding of open source** and **hands-on Linux skills**.

---

## ⚙️ Technologies Used
- Linux (Ubuntu/Kali/WSL)
- Bash Shell Scripting
- Git (Version Control)

---

## 📂 Repository Contents

| File Name | Description |
|----------|------------|
| `script1_system_identity.sh` | Displays Linux system details like kernel, user, uptime |
| `script2_package_inspector.sh` | Checks if Git is installed and shows package details |
| `script3_disk_auditor.sh` | Audits directories for size, permissions, ownership |
| `script4_log_analyzer.sh` | Analyzes log files and counts keyword occurrences |
| `script5_manifesto_generator.sh` | Generates a personalized open-source manifesto |
| `README.md` | Project documentation |

---

## 🧾 Script Descriptions

### 🔹 Script 1: System Identity Report
Displays system information such as Linux distribution, kernel version, logged-in user, uptime, date, and OS license.

---

### 🔹 Script 2: FOSS Package Inspector
Checks whether Git is installed on the system, displays its version and details, and prints a short philosophy note using a case statement.

---

### 🔹 Script 3: Disk and Permission Auditor
Loops through important directories and displays their disk usage, permissions, and ownership. Also checks Git configuration files.

---

### 🔹 Script 4: Log File Analyzer
Reads a log file line by line, counts occurrences of a keyword (default: "error"), and displays the last 5 matching entries.

---

### 🔹 Script 5: Open Source Manifesto Generator
Takes user input and generates a personalized open-source philosophy statement saved into a text file.

---

## ▶️ How to Run the Scripts

### Step 1: Clone the repository
```bash
git clone https://github.com/your-username/oss-audit-[rollnumber].git
cd oss-audit-[rollnumber]
````

---

### Step 2: Give execution permission

```bash
chmod +x *.sh
```

---

### Step 3: Run scripts

#### Script 1

```bash
./script1_system_identity.sh
```

#### Script 2

```bash
./script2_package_inspector.sh
```

#### Script 3

```bash
./script3_disk_auditor.sh
```

#### Script 4

```bash
./script4_log_analyzer.sh sample.log error
```

#### Script 5

```bash
./script5_manifesto_generator.sh
```

---

## 📌 Dependencies

* Linux environment (Ubuntu/Kali/WSL)
* Bash shell
* Git installed (for Script 2)
* Basic Linux commands: `grep`, `awk`, `cut`, `du`, `ls`, `date`

---

## 🎯 Learning Outcomes

* Understanding open-source philosophy and licensing
* Hands-on experience with Linux shell scripting
* Practical use of system commands and automation
* Insight into Git and version control systems

---

## 📎 Note

All scripts are tested on a Linux environment and include proper comments for understanding.
This project is created for academic purposes as part of the OSS course.

---

## ⭐ Conclusion

This project highlights how open-source tools like Git are not just software, but part of a collaborative ecosystem that promotes transparency, learning, and innovation.

---