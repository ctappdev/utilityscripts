for dir in ../*/ do basename; do
    if [ -d "$dir" ]; then
	echo "Base directory name is $(basename $dir)"
    	if [[ -d $dir/.git ]] || [[ -d $dir/.git ]]; then
		echo "GIT alreadt exists in directory $dir"
	else
		dirname=$(basename $dir)
		if [[ $dirname = "enums" ]]; then
			echo "Found $dirname"
		else
			echo "Skipped $dirname"
		fi
		
	fi
    fi
done
