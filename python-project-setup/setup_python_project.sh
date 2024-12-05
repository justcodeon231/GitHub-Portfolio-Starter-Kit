#!/bin/bash

# Ask for the project name
echo "Enter your project name:"
read project_name

# Create the main project directory
mkdir "$project_name"
cd "$project_name" || exit

# Create basic directory structure
mkdir -p src docs tests

# Create essential project files
touch "$project_name.py"        # Main Python file (or the entry point)
touch README.md                 # Main README file
touch LICENSE                   # License file
touch .gitignore                # Git ignore file

# Create the README template
cat <<EOL > README.md
# $project_name

## Project Description 📝
A brief overview of the project. Explain what it does, why you built it, and how users can interact with it. 🧑‍💻

## Features ✨
- Feature 1
- Feature 2
- Feature 3

## Setup Instructions 🚀
1. Install dependencies: 
   - For Python: \`pip install -r requirements.txt\`
   - For JS: \`npm install\`
2. Run the program:
   - For Python: \`python $project_name.py\`
   - For JS: \`npm start\`

## How to Contribute 🤝
1. Fork this repository.
2. Create a feature branch: \`git checkout -b feature-branch\`
3. Commit your changes: \`git commit -am 'Add new feature'\`
4. Push to the branch: \`git push origin feature-branch\`
5. Open a pull request.

## License 📜
This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments 🙏
- Inspiration: [Add inspiration here]
- Libraries/Resources: [List any libraries or resources used]
EOL

# Create a basic .gitignore file
cat <<EOL > .gitignore
# Python related
__pycache__/
*.py[cod]
*.so
*.dSYM
EOL

# Create a basic LICENSE file (MIT License)
cat <<EOL > LICENSE
MIT License

Copyright (c) $(date +"%Y") <Your Name or Organization>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOL

# Display success message
echo "Project $project_name setup successfully! 🎉"
echo "Remember to customize your README, update the LICENSE, and start coding your project!"
