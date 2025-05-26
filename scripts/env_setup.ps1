# Get the Anaconda installation path
$condaPath = "C:\Users\emili\Anaconda3\Scripts\conda.exe"

# Remove the environment if it exists
Write-Host "Removing existing environment if it exists..."
& $condaPath env remove -n py10_rl

# Create the new environment
Write-Host "Creating new environment from environment.yml..."
& $condaPath env create -f environment.yml

# activate new environment
Write-Host "Activating new environment..."
& $condaPath activate py10_rl

# setup kernel for notebook
Write-Host "Setting up kernel for notebook..."
python -m ipykernel install --user --name py10_rl --display-name "Python 10 (RL)"

Write-Host "Environment setup complete." 
