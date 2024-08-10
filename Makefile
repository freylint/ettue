
ANSIBLE_PLAYBOOK=ansible-playbook
ANSIBLE_FLAGS=-K
PLAYBOOKS_DIR=playbooks
INVENTORIES_DIR=inventories

# Default target
all: update

define play
	$(ANSIBLE_PLAYBOOK) $(ANSIBLE_FLAGS) -i $(INVENTORIES_DIR)/$(1).yml $(PLAYBOOKS_DIR)/$(1).yml
endef

# Specific targets
update:
	$(call play,update)

build:
	$(call play,build)
