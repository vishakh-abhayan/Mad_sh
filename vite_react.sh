#!/bin/bash

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
  echo "Node.js is not installed. Please install Node.js before running this script."
  exit 1
fi

# Check if Git is installed
if ! command -v git &> /dev/null; then
  echo "Git is not installed. Please install Git before running this script."
  exit 1
fi

# Create a new React.ts project with Vite
echo "Creating a new React.ts project with Vite..."
npx create-vite@latest my-react-app --template react-ts

# Change to the project directory
cd my-react-app

# Install Tailwind CSS
echo "Installing Tailwind CSS..."
npm install -D tailwindcss@latest postcss@latest autoprefixer@latest
npx tailwindcss init -p

# Initialize Git
echo "Initializing Git repository..."
git init
git add .
git commit -m "Initial commit"

# Create a .env file
echo "Creating a .env file..."
touch .env

# Add .env to .gitignore
echo ".env" >> .gitignore

# Install npm packages
echo "Installing npm packages..."
npm install

# Run the development server
echo "Starting the development server..."
npm run dev

