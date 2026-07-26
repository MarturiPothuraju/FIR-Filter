import re

# File path of your source code
SOURCE_FILE = "tap3fir.v"  # Change to your actual file path/name
README_FILE = "README.md"

# 1. Read the code file content
with open(SOURCE_FILE, "r") as f:
    code_content = f.read()

# 2. Format it into a Markdown code block
formatted_code = f"<!-- START_CODE -->\n```verilog\n{code_content}\n```\n<!-- END_CODE -->"

# 3. Read README content
with open(README_FILE, "r") as f:
    readme_content = f.read()

# 4. Replace content between markers
pattern = r"<!-- START_CODE -->[\s\S]*?<!-- END_CODE -->"
updated_readme = re.sub(pattern, formatted_code, readme_content)

# 5. Write back to README.md
with open(README_FILE, "w") as f:
    f.write(updated_readme)
