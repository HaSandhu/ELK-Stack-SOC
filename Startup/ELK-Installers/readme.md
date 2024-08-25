# ELK Stack Installers

This directory contains the necessary installers for setting up the ELK (Elasticsearch, Logstash, Kibana) Stack in a Windows Sandbox environment.

## Required Files

Please ensure the following files are placed in this directory before running the setup script:

1. **Java Development Kit (JDK) Installer**
   - **Filename:** `jdk-11_windows-x64_bin.exe`
   - **Download Link:** [AdoptOpenJDK](https://adoptopenjdk.net/) or [Oracle JDK](https://www.oracle.com/java/technologies/javase-downloads.html)

2. **Elasticsearch**
   - **Filename:** `elasticsearch-7.10.1-windows-x86_64.zip`
   - **Download Link:** [Elasticsearch Downloads](https://www.elastic.co/downloads/elasticsearch)

3. **Logstash**
   - **Filename:** `logstash-7.10.1.zip`
   - **Download Link:** [Logstash Downloads](https://www.elastic.co/downloads/logstash)

4. **Kibana**
   - **Filename:** `kibana-7.10.1-windows-x86_64.zip`
   - **Download Link:** [Kibana Downloads](https://www.elastic.co/downloads/kibana)

## Usage

Place all required files in this directory before executing the setup script in the Windows Sandbox. The script will automatically install and configure these components within the sandbox environment.
