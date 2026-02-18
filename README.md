# Nano Configuration Setup

This repository contains a simple setup script to configure GNU nano with custom settings and syntax highlighting.

The goal is to quickly set up **nano** with useful defaults and syntax definitions cloned from a third-party source.

## Usage
Clone this repository & run the setup script:
   
   ```bash
   git clone https://github.com/chertik77/nano && cd nano && sh setup.sh
   ```
Or if sh is not available:

   ```bash
   git clone https://github.com/chertik77/nano && cd nano
   chmod +x setup.sh
   ./setup.sh
   ```

## What it does
The included `setup.sh` script will:

1. Remove any existing Nano configuration (not needed for lab exams)
2. Create a shell alias n → nano (added to your ~/.bashrc)
3. Clone a syntax highlighting repository
4. Create a new ~/.nanorc with custom settings
