all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "" >> README.md
	echo "**Date and time of make:** $$(date)" >> README.md
	echo "" >> README.md
	echo "**Lines of code in guessinggame.sh:** $$(wc -l < guessinggame.sh | tr -d ' ')" >> README.md

clean:
	rm -f README.md

.PHONY: all clean
