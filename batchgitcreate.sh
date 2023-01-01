for dir in ../*/ do basename; do
    if [ -d "$dir" ]; then
	echo "Base directory name is $(basename $dir)"
    	if [[ -d $dir/.git ]] || [[ -d $dir/.git ]]; then
		echo "GIT alreadt exists in directory $dir"
	else
		dirname=$(basename $dir)
		cd $dir
		touch README.md
		git init
		git add .
		git commit -m "Initialise repository"
		gh repo create ${PWD/*\//} --public --source=. --push
	fi
    fi
done
