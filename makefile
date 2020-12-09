README.md:
	echo "title of the project:" > README.md
	echo "##The UNIX workbench final assignment" >> README.md
	echo "Today the **date** is:" >> README.md
	date +%D >> README.md
	echo "The **number of lines** in my *guessinggame.sh* script is:" >> README.md
	wc -l guessinggame.sh | cut -b 1,2 >> README.md

