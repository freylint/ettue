
ANS=ansible-playbook
ANS_FLAGS=-Kv

define play
	$(ANS) $(ANS_FLAGS) -i local $(1).yml
endef

# Specific targets
all:
	$(call play,build)
