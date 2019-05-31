all: README.md

README.md: README.md
	echo "# Unix Workbench Project" > README.md
	date >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md

