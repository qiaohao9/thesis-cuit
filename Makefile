.PHONY: clean
clean:
	find . -name "*aux" -o -name "*log" -o -name "*out" -type f | awk '{ print }' | xargs rm
