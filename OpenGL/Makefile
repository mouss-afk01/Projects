# Zoek naar alle mappen met de naam build in directe submappen
BUILD_DIRS := $(wildcard */build)

.PHONY: clean help

# Verwijder de inhoud van alle build-mappen
clean:
	@echo "Bezig met het leegmaken van build-mappen..."
	@if [ -z "$(BUILD_DIRS)" ]; then \
		echo "Geen build mappen gevonden"; \
	else \
		for dir in $(BUILD_DIRS); do \
			if [ -d "$$dir" ]; then \
				echo "Inhoud verwijderen uit: $$dir"; \
				rm -rf "$$dir"/*; \
			fi; \
		done; \
	fi

help:
	@echo "Beschikbare commando's:"
	@echo " make clean - Verwijdert de inhoud van alle 'build' submappen"
	@echo " make help  - Toont deze help"
