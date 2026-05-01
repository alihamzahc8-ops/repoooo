import subprocess
import os

# Step 1: sshx install karo
subprocess.run(
    "curl -sSf https://sshx.io/get | sh",
    shell=True,
    check=True
)

# Step 2: sshx run karo
process = subprocess.Popen(
    ["sshx"],
    stdout=subprocess.PIPE,
    stderr=subprocess.STDOUT,
    text=True
)

# Step 3: Link print karo
for line in process.stdout:
    print(line, end="")
    if "sshx.io" in line:
        print("\n✅ Yeh link browser mein kholo!")
        break

process.wait()
