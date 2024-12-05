#!/bin/bash

# Define the root project name
PROJECT_NAME="GitHub-Portfolio-Starter-Kit"

# Create the main project directory
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME" || exit

# Create the main directories for the structure
mkdir -p "beginner-projects" "intermediate-projects" "guides" "resources" "docs"

# Create README.md
echo "# GitHub Portfolio Starter Kit" > README.md
echo "A collection of projects and resources to build your GitHub portfolio." >> README.md

# Beginner Projects
mkdir -p "beginner-projects/fun-python-program"
echo "## Fun Python Program" > "beginner-projects/fun-python-program/README.md"
echo "This is a beginner-friendly Python project that lets you [project description]." >> "beginner-projects/fun-python-program/README.md"
echo "Write Python code for [project description]" > "beginner-projects/fun-python-program/main.py"

# Beginner Static Website
mkdir -p "beginner-projects/static-website"
echo "## Static Website" > "beginner-projects/static-website/README.md"
echo "This is a simple static website built using HTML, CSS, and JavaScript." >> "beginner-projects/static-website/README.md"
echo "<!DOCTYPE html>" > "beginner-projects/static-website/index.html"
echo "<html>" >> "beginner-projects/static-website/index.html"
echo "<head><title>Beginner Portfolio</title></head>" >> "beginner-projects/static-website/index.html"
echo "<body><h1>Welcome to My GitHub Portfolio!</h1></body>" >> "beginner-projects/static-website/index.html"
echo "</html>" >> "beginner-projects/static-website/index.html"

# Intermediate Projects
mkdir -p "intermediate-projects/python-expense-tracker"
echo "## Python Expense Tracker" > "intermediate-projects/python-expense-tracker/README.md"
echo "This Python project tracks expenses and generates reports." >> "intermediate-projects/python-expense-tracker/README.md"
echo "Create a Python app for expense tracking." > "intermediate-projects/python-expense-tracker/main.py"

mkdir -p "intermediate-projects/dynamic-website"
echo "## Dynamic Website" > "intermediate-projects/dynamic-website/README.md"
echo "This project builds a dynamic website using Python and Flask." >> "intermediate-projects/dynamic-website/README.md"
echo "from flask import Flask, render_template" > "intermediate-projects/dynamic-website/app.py"
echo "app = Flask(__name__)" >> "intermediate-projects/dynamic-website/app.py"
echo "@app.route('/')" >> "intermediate-projects/dynamic-website/app.py"
echo "def home():" >> "intermediate-projects/dynamic-website/app.py"
echo "    return render_template('index.html')" >> "intermediate-projects/dynamic-website/app.py"
echo "if __name__ == '__main__':" >> "intermediate-projects/dynamic-website/app.py"
echo "    app.run(debug=True)" >> "intermediate-projects/dynamic-website/app.py"
mkdir -p "intermediate-projects/dynamic-website/templates"
echo "<html><body><h1>Welcome to My Dynamic Website</h1></body></html>" > "intermediate-projects/dynamic-website/templates/index.html"

# Guides
mkdir -p "guides/creating-repos"
echo "## How to Create a Great GitHub Repo" > "guides/creating-repos/README.md"
echo "Step-by-step guide to setting up an organized GitHub repository." >> "guides/creating-repos/README.md"

mkdir -p "guides/personal-branding"
echo "## Personal Branding on GitHub" > "guides/personal-branding/README.md"
echo "How to leverage GitHub for building your personal brand." >> "guides/personal-branding/README.md"

# Resources
mkdir -p "resources/coding-resources"
echo "## Coding Resources" > "resources/coding-resources/README.md"
echo "A curated list of coding resources for beginners." >> "resources/coding-resources/README.md"

# Docs
mkdir -p "docs"
echo "## Documentation" > "docs/README.md"
echo "This is the documentation for the GitHub Portfolio Starter Kit." >> "docs/README.md"

# Complete the setup
echo "GitHub Portfolio Starter Kit setup complete!"
