ANSIBLE_GALAXY=$(shell which ansible-galaxy)

install:
	$(ANSIBLE_GALAXY) install -r requirements.yml -p roles --force
