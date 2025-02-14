# 📖 **Kindred PCI Lexicon**

This **lexicon** serves as a **central repository** for **core terms and definitions** within the **Kindred Polynomial Continuous Improvement (PCI) platform**.  
It ensures **consistent terminology** across **documentation, development, and user-facing interfaces**.

---

## ⚙️ **Core Concepts**

| **Term**                 | **Definition**                                                                                         |
|--------------------------|---------------------------------------------------------------------------------------------------------|
| **Project**               | A **high-level initiative** within PCI, defined by **objectives, resources, and a timeline**.              |
| **Solution**              | A **deliverable engineering asset** generated from **project execution**. Solutions are **tasks' outcomes**. |
| **Task**                  | A **discrete unit of work** within a project, potentially **dependent on other tasks** or **AI-generated**. |
| **Dependency**            | A **task relationship** specifying that **one task's completion** is required **before another begins**.  |
| **Deliverable**           | A **file or artifact** generated **from a task**. Examples: CAD files, BOM lists, **technical reports**.    |
| **AI Guidance Level**     | A **user-defined parameter** indicating **how much decision-making** is delegated **to AI**.                |
| **Bidirectional Graph Model** | A **graph structure** where **nodes (tasks/projects)** have **dynamic dependencies** that influence **AI workflows**. |
| **Node**                  | A **visual representation** of a **task, project, or solution** within the **graph-based UI**.             |
| **Edge**                  | A **connector** representing **dependencies** between **nodes** (tasks or projects).                      |

---

## 🧠 **AI-Driven Workflow**

| **Term**                 | **Definition**                                                                                         |
|--------------------------|---------------------------------------------------------------------------------------------------------|
| **AI Suggestions**        | **Machine-generated options** for **solutions or task decompositions**. Based on **project parameters**.  |
| **Task Decomposition**    | The **process of breaking down** a **solution into tasks** based on **AI insights** or **manual input**. |
| **Solution Generation**   | The **AI-driven or manual creation** of a **new solution**, based on **project requirements**.            |
| **Model Confidence Score**| The **AI's internal metric** indicating the **reliability of a suggestion**. Higher = **more confident**. |
| **ML Inference Pipeline** | The **data processing structure** that **trains models** for **task predictions** and **solution generation**. |
| **Langflow-Driven UI**    | A **visual interface inspired by Langflow** that **guides users** through **task execution flows**.       |

---

## 🎯 **Project Execution & Monitoring**

| **Term**                 | **Definition**                                                                                         |
|--------------------------|---------------------------------------------------------------------------------------------------------|
| **Run Control**           | **Buttons within task nodes** that allow **users to start, pause, or stop** task execution.              |
| **Execution Log**         | A **real-time terminal window** that displays **task operations, AI decisions, and system outputs**.     |
| **Task Status**           | A **real-time indicator** showing if a task is **Pending, Running, Completed, or Failed**.               |
| **Deliverable Panel**     | A **UI component** that displays **task outputs** with options to **preview or download** files.         |
| **Runtime Optimization**  | PCI's **AI-driven approach** to **optimize task execution** based on **historical performance**.         |
| **Dependency Tree**       | A **visual structure** that **maps task interdependencies** for easier **workflow planning**.             |

---

## 📂 **Data Management & Storage**

| **Term**                 | **Definition**                                                                                         |
|--------------------------|---------------------------------------------------------------------------------------------------------|
| **Workflow State**        | The **current condition** of a **project's tasks and dependencies**.                                     |
| **Object Storage**        | The **system for storing files** like **engineering reports** via **Gitea**.                            |
| **Cache Layer**           | An **in-memory data store** using **Redis** for **improving system performance**.                       |
| **Project History**       | A **record of task changes**, AI suggestions, and user decisions **stored for auditing**.                |

---

## 🌐 **Infrastructure & System Design**

| **Term**                 | **Definition**                                                                                         |
|--------------------------|---------------------------------------------------------------------------------------------------------|
| **ReactFlow UI**          | A **JavaScript library** used to create the **graph-based user interface** for **PCI project tasks**.     |
| **Go API Gateway**        | The **backend service** managing **REST & gRPC communication** between **frontend and infrastructure**.   |
| **Task Orchestration**    | The **automated coordination** of **task execution** across the **project workflow**.                     |
| **Google Cloud SQL**      | The **managed database service** used for **PCI's relational data**.                                      |
| **Kubernetes Scheduler**  | Manages **containerized deployments** to ensure **scalability and resilience**.                          |

---

## 🚦 **User Interaction & Control**

| **Term**                 | **Definition**                                                                                         |
|--------------------------|---------------------------------------------------------------------------------------------------------|
| **Prompt Window**         | A **modal interface** for **creating new projects or tasks**.                                            |
| **Interactive Node UI**   | **Task nodes** that **respond to user interactions** like **drag-and-drop** and **context menus**.        |
| **Browser Component**     | The **dynamic window** similar to Langflow's **file browser UI** for selecting **assets or tasks**.       |
| **User Input Modal**      | A **form-based interface** for **manual task parameter input**.                                          |
| **Workflow Guidance Slider** | Allows users to set **AI involvement** from **manual-only** to **fully autonomous**.                   |

---

## 🌱 **Future-Oriented Terms**

| **Term**                 | **Definition**                                                                                         |
|--------------------------|---------------------------------------------------------------------------------------------------------|
| **ML-Assisted Planning**  | **AI-driven task optimization** based on **previous project learnings**.                                 |
| **Generative Task Creation**| The process of **auto-generating tasks** based on **natural language prompts**.                         |
| **Real-Time Collaboration**| A **planned feature** enabling **simultaneous project edits** by **multiple team members**.              |
| **Workflow Presets**      | Pre-configured **project structures** based on **domain-specific templates**.                            |

---

This **lexicon** will evolve as the **PCI platform matures**.  
**Developers** are encouraged to **propose new terms** or **adjust definitions** based on **feature changes** and **user feedback**.
