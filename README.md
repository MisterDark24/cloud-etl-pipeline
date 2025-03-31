# ☁️ Cloud ETL Pipeline

Proyecto final para la materia de **Computación en la Nube**, enfocado en la construcción de un pipeline ETL utilizando **Pentaho Data Integration (Spoon)**.

---

## 📌 Descripción

La idea de este proyecto es hacer la ingesta, transformación y carga de datos a un gestor de base de datos relacional, para luego realizar análisis y visualización de datos utilizando herramientas como **Power BI**. El objetivo es crear un flujo de trabajo automatizado que permita la integración continua de datos a una base de datos, facilitando la toma de decisiones basada en datos.

---

## 📂 Estructura del repositorio

```
cloud-etl-pipeline/
├── transformations/         # Archivos .ktr (transformaciones ETL)
├── jobs/                    # Archivos .kjb (jobs de control de flujo)
├── sql/                     # Scripts SQL
├── logs/                    # Logs generados durante la ejecución
├── data/                    # Archivos de entrada de datos (opcional)
├── business intelligence/   # Archivos .pbix (Power BI)
├── README.md
└── .gitignore
```

---

## ⚙️ Tecnologías utilizadas

| Tecnología                           | Uso principal                                                                  |
| ------------------------------------ | ------------------------------------------------------------------------------ |
| **VMware Workstation**               | Virtualización del entorno de desarrollo en una máquina local                  |
| **Linux (Ubuntu)**                   | Sistema operativo para el desarrollo, pruebas y ejecución del pipeline         |
| **Pentaho Data Integration (Spoon)** | Orquestación del proceso ETL, validación de datos y envío de notificaciones    |
| **MySQL**                            | Base de datos relacional para almacenamiento estructurado y análisis posterior |
| **Git & GitHub**                     | Control de versiones y gestión del repositorio del proyecto                    |
| **Power Bi**                         | Herramienta de visualización de datos para análisis y reportes                 |

---
