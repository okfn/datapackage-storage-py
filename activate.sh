# Run alias
alias run='python run.py'

# Git commit hook
if [ ! -f .git/hooks/pre-commit ]; then
    echo -e "#!/bin/sh\n\n\npython run.py test" > .git/hooks/pre-commit
    chmod +x .git/hooks/pre-commit
fi

# Python env
virtualenv venv
source venv/bin/activate
pip install -Urrequirements.dev.txt
