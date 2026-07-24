<h1 align="center">🩸 Blood Donation Database</h1>
<h3 align="center">University database project: from mini-world to normalized schema and SQL dump</h3>

<p align="center">
  <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT" />
  <img src="https://img.shields.io/badge/database-MariaDB-003545.svg" alt="MariaDB" />
  <img src="https://img.shields.io/badge/language-SQL-blue.svg" alt="SQL" />
</p>

---

### 📖 Overview

A university database project modeling the path a **whole blood donation** follows to reach a patient, set in the Emilia-Romagna region (Bologna, Ferrara, Ravenna, Modena).

The work is divided into **4 parts**:

1. **Requirements Analysis** - description of the mini-world and its constraints.
2. **ER / EER Schema** - conceptual design (6 strong entities: `DONOR`, `BLOOD_BAG`, `BLOOD_TRANSFUSION_BANK`, `REQUEST`, `DOCTOR`, `PATIENT`).
3. **Relational Schema + Normalization** - mapping to relations and normalization up to 3NF.
4. **Database Dump** - the full `blood_donation.sql` dump with schema and sample data.

---

### 🛠️ Tech Stack

<p align="left">
  <a href="https://mariadb.org/" target="_blank"><img src="https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white" alt="MariaDB" height="30" style="margin: 4px" /></a>
  <a href="https://www.phpmyadmin.net/" target="_blank"><img src="https://img.shields.io/badge/phpMyAdmin-6C78AF?style=for-the-badge&logo=phpmyadmin&logoColor=white" alt="phpMyAdmin" height="30" style="margin: 4px" /></a>
  <a href="https://en.wikipedia.org/wiki/SQL" target="_blank"><img src="https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="SQL" height="30" style="margin: 4px" /></a>
</p>

---

### 🗂️ Project Structure

```
blood_donation_database
├── 1) Requirements Analysis (Description of the Mini-World).txt
├── 2) Designing the ER-EER Schema
│   ├── ER Schema - ENG.png
│   ├── ER Schema - ITA.png
│   └── ER Schema.drawio
├── 3) Relational Schema + Normalization
│   ├── Normalization.txt
│   └── Relation Schema - ITA.png
└── 4) Dump Database
    └── blood_donation.sql
```

---

### 🚀 Usage

Import the dump into a MariaDB/MySQL server (e.g. via phpMyAdmin):

```sh
mysql -u root -p blood_donation < "4) Dump Database/blood_donation.sql"
```

---

### 📫 Connect With Me

<p align="left">
  <a href="https://github.com/path0s" target="_blank">
    <img src="https://img.shields.io/badge/github-%2324292e.svg?&style=for-the-badge&logo=github&logoColor=white" alt="GitHub" />
  </a>
  <a href="https://www.linkedin.com/in/paologuerraa/" target="_blank">
    <img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn" />
  </a>
</p>
