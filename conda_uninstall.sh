conda init --reverse --dry-run
conda init --reverse

CONDA_BASE_ENVIRONMENT=$(conda info --base)
echo The next command will delete all files in ${CONDA_BASE_ENVIRONMENT}
# Warning, the rm command below is irreversible!
# check the output of the echo command above
# To make sure you are deleting the correct directory
rm -rf ${CONDA_BASE_ENVIRONMENT}

echo ${HOME}/.condarc will be removed if it exists
rm -f "${HOME}/.condarc"
echo ${HOME}/.conda and underlying files will be removed if they exist.
rm -fr ${HOME}/.conda
