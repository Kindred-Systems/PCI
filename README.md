# 🌐 **Kindred PCI - Polynomial Continuous Improvement Suite**

**Version**: 1.0.0  
**Status**: Active Development 🚀  
**Target Release**: July 1, 2025

---

## 🧠 **Introduction**

**Kindred PCI** (Polynomial Continuous Improvement) is an **AI-driven project management platform** designed to **optimize engineering workflows** through **real-time insights, automation, and adaptive task management**. PCI leverages **machine learning** and **graph-based UI components** to enable **efficient collaboration** and **dynamic task execution**.

Our platform integrates with tools like **Odoo ERP** and **Google Cloud Platform (GCP)** to **streamline manufacturing operations** and **support engineering projects** across diverse industries.

---

## 🎯 **Core Objectives**

- **Simplify Project Management**: **AI-assisted planning** and **visual task flows** reduce manual overhead.  
- **Optimize Performance**: PCI uses **ML-driven task allocation** to **maximize efficiency**.  
- **Enhance Collaboration**: **Interactive dashboards** and **shared workspaces** improve **team coordination**.  
- **Automate Deliverable Generation**: **AI-based decomposition** generates **files like BOMs, CAD diagrams, and technical reports** automatically.

---

## ⚙️ **System Architecture**

**Kindred PCI** is a **containerized application** built with a **microservices architecture**. It features:

- **Frontend:** **React (Vite, Tailwind, Redux)**  
- **Backend:** **Go (Fiber API Gateway + gRPC services)**  
- **Data Layer:** **PostgreSQL, MongoDB, Redis, Gitea**  
- **Infrastructure:** **Docker, Kubernetes (GCP), Langflow**

**Data Flow**: Tasks and solutions are modeled using a **bidirectional graph**. **AI models** assist in **task decomposition**, while **Langflow workflows** manage **execution pipelines**.

---

## 🚀 **Key Features**

1. **Node-Based UI** *(Langflow-Inspired)*
   - **Drag-and-drop interface** for **task creation and adjustment**.
   - **Interactive dependency lines** to **visualize task relationships**.
2. **AI-Guided Project Setup**
   - **Auto-suggestions** for **project structures** based on **prior workflows**.
   - **Configurable AI assistance** to **balance manual and automated planning**.
3. **Dynamic Task Decomposition**
   - **Adaptive algorithms** break **complex projects** into **manageable tasks**.
   - **Human override** capabilities for **custom workflow configurations**.
4. **Deliverable Generation & Tracking**
   - **Automated document creation** *(PDFs, CAD files, etc.)*.  
   - **Deliverable preview** directly in the **task UI**.
5. **Integration with External Systems**
   - **Odoo ERP integration** via **XML-RPC/REST APIs**.
   - **Cloud-based storage** with **GCP SQL and Gitea**.

---

## 🔍 **User Workflow Overview**

### 1️⃣ **Project Initialization**
- Click **+Create Project/Task**.  
- Fill out the **prompt window form** *(project name, type, description, AI guidance level)*.
- PCI generates a **Project Node** in the **visual graph UI**.

### 2️⃣ **AI-Guided Solution Suggestions**
- The **right panel** presents **AI-suggested solutions**.  
- **Users select a solution** or **input parameters manually**.

### 3️⃣ **Task Decomposition**
- PCI decomposes solutions into **task nodes**.  
- **Dependencies are visualized**; tasks can be **re-ordered or modified**.

### 4️⃣ **Task Execution**
- **Run tasks** by clicking the **Run button**.  
- **Live logs** show **progress and status updates**.

### 5️⃣ **Deliverable Review**
- Access **deliverables** from the **Deliverable Panel**.  
- Files can be **previewed**, **downloaded**, or **shared**.

### 6️⃣ **Project Closure**
- Generate a **final report** with **task summaries** and **deliverable links**.  
- **Archive** or **clone** projects for **future use**.

---

## 📂 **Directory Structure**

```
root/
├── server/
│   ├── services/
│   │   ├── chatbot.go
│   │   ├── task_manager.go
│   │   └── workflow_controller.go
│   ├── api/
│   │   └── proto/
│   │       └── pci.proto
│   └── main.go
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   ├── pages/
│   │   └── App.tsx
│   ├── public/
│   └── index.html
├── langflow/
│   └── workflows/
├── docker/
│   └── docker-compose.yml
└── README.md
```

---

## 🔧 **Installation**

### **1. Clone the Repository**
```bash
git clone https://github.com/KindredSystems/pci.git
cd pci
```

### **2. Environment Setup**
```bash
cp .env.example .env
# Edit variables for database credentials and APIs
```

### **3. Docker Setup**
```bash
docker-compose up -d
```

### **4. Access the Platform**
- Open a browser: `http://localhost:8080`

---

## 📖 **Key Resources**

- [Langflow Documentation](https://docs.langflow.org)
- [Odoo API Docs](https://www.odoo.com/documentation/master/developer/api/external_api.html)
- [PCI Lexicon](./docs/lexicon.md)

---

## 🧩 **Contributing**

**We welcome contributions!** Please follow these steps:
1. **Fork the repository**.
2. **Create a feature branch**: `git checkout -b feature/new-feature`.
3. **Commit your changes**.
4. **Submit a pull request**.

### **Coding Standards**
- **Go:** Follow **Effective Go** guidelines.  
- **React:** Maintain **modular, reusable components**.

---

## 🔍 **Troubleshooting**

| **Issue**                      | **Solution**                                    |
|--------------------------------|-------------------------------------------------|
| **Login Fails**                | Check **OAuth2 credentials** in **.env**.       |
| **Database Connection Error**  | Ensure **PostgreSQL** is **running**.            |
| **Frontend Doesn't Load**      | Run `docker-compose logs frontend` to debug.    |
| **Langflow Workflow Missing**  | Check **Langflow server status**.                |

---

## 🌱 **Roadmap**

- **Integrate additional AI models** *(e.g., GPT-4-turbo, BERT)*.  
- **Expand deliverable generation options** *(e.g., FEA reports, simulation files)*.  
- **Improve UI performance** *(React Profiler monitoring)*.

---

## 🛠️ **License**

**MIT License** – Open-source, free to use, modify, and distribute.

**© 2025 Kindred Systems**
