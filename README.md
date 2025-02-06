# Kindred Platform Client

The **Kindred Platform Client** is a standalone frontend application for the **Kindred Platform Community Edition**. It provides an interactive interface for **managing engineering projects, visualizing workflows, and integrating AI-assisted project management tools**. This application is designed to operate within a **containerized client-server architecture**, enabling a **self-hosted, single-user environment** with planned support for **Snap Store deployment**.

## Overview

Kindred Platform Client leverages **Langflow-inspired UI components** to facilitate **workflow visualization** and **automated project structuring**. It is designed to help engineers and developers **map project needs, organize solution components, and optimize workflows** using **data-driven decision-making**.

This system integrates with the **Kindred client server backend**, which processes project data, executes model-driven automation, and maintains project lifecycle integrity. The frontend provides **an intuitive interface for managing project resources, reviewing predictive performance analytics, and refining workflow optimizations**.

## Features

Kindred Platform Client includes tools for **project workflow visualization**, **AI-powered recommendations**, and **secure, self-contained execution**. Users can **structure engineering projects dynamically**, aligning resources with project requirements through **automated decision-making**.

Future updates will introduce **expanded API support, deeper workflow automation, and seamless deployment options**.

## Getting Started

### Clone the Repository  
To begin using the Kindred Platform Client, clone the repository and navigate into the project directory.

plaintext
git clone https://github.com/Kindred-Systems/kindred-platform-client.git  
cd kindred-platform-client  

### Install Dependencies  
Ensure that all necessary dependencies are installed before running the application.

plaintext
npm install  
or  
flutter pub get  

### Running the Application  
For development mode, run the following command to start the application:

plaintext
npm start  
or  
flutter run  

To build the application for production deployment, use:

plaintext
npm run build  
or  
flutter build web  

### Containerized Deployment  
For containerized execution, build and run the Docker image:

plaintext
docker build -t kindred-client .  
docker run -p 8080:8080 kindred-client  

## Roadmap

Future updates will include **extended API access, expanded workflow automation features, and a Snap Store release** for simple distribution and updates.

## License

Kindred Platform Client is released under the **MIT License**, allowing open-source contributions while maintaining commercial distribution flexibility.

## Additional Information  

For more details about **Kindred Systems**, visit:  
[www.kindred-systems.com](https://www.kindred-systems.com)  

For more information on **Kindred Platform Community Edition**, visit the product page:  
[www.kindred-systems.com/pci](https://www.kindred-systems.com/pci)
