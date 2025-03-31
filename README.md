# ☁️ Cloud ETL Pipeline

Proyecto final para la materia de **Computación en la Nube**, enfocado en la construcción de un pipeline ETL utilizando **Pentaho Data Integration (Spoon)**.

---

## 📌 Descripción

Este proyecto permite cargar archivos CSV a una base de datos relacional mediante transformaciones ETL desarrolladas en Pentaho. Se incluyen validaciones, control de errores, envío de notificaciones por correo y gestión de logs. Todo el proceso es automatizable y escalable.

---

## 📂 Estructura del repositorio

```
cloud-etl-pipeline/
├── transformations/         # Archivos .ktr (transformaciones ETL)
├── jobs/                    # Archivos .kjb (jobs de control de flujo)
├── sql/                     # Scripts SQL
├── logs/                    # Logs generados durante la ejecución
├── data/                    # Archivos de entrada de datos (opcional)
├── README.md
└── .gitignore
```

---

## ⚙️ Tecnologías utilizadas

| Tecnología                           | Uso principal                                                                  |
|--------------------------------------|--------------------------------------------------------------------------------|
| **VMware Workstation**               | Virtualización del entorno de desarrollo en una máquina local                  |
| **Linux (Ubuntu)**                   | Sistema operativo para el desarrollo, pruebas y ejecución del pipeline         |
| **Pentaho Data Integration (Spoon)** | Orquestación del proceso ETL, validación de datos y envío de notificaciones    |
| **MySQL**                            | Base de datos relacional para almacenamiento estructurado y análisis posterior |
| **Git & GitHub**                     | Control de versiones y gestión del repositorio del proyecto                    |

---


