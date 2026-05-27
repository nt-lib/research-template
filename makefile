.PHONY: clean test copy_remote test_remote
REMOTE_DIR := /tmp/$(shell basename $(CURDIR))

clean:
	find . -type f -name "*.sig" -delete

test:
	@echo "No tests configured yet — override this target"

copy_remote:
	rsync -avz --delete ./ $(ssh):$(REMOTE_DIR)

# Usage: make test_remote ssh="user@hostname"
test_remote: copy_remote
	ssh $(ssh) "cd $(REMOTE_DIR) && make test"
