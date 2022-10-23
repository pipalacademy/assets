.PHONY: default
default: deploy

.PHONY: deploy
deploy:
	ssh -A pipal@pipal.in git -C assets pull