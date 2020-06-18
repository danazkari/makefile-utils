include meta.mk help.mk

example-task: ## This is a general task
example-task:
	@echo $(SHELL_EXPORT)

example-classification: ##@devops This is a task meant to be run only for devops
example-classification:
	@$(SHELL_EXPORT) python -c "import os; print('Project name: %s - %s' %(os.environ['PROJECT_NAME'], os.environ['VERSION']))"

example-env: ##@devops You can access the environment variables defined in .env
example-env:
	@python -c "import os; print('FOO=%s' % (os.environ['FOO']))"
