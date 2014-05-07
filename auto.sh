set -e

echo

DU_BIN=
if [ -d "$(pwd)/.git" ]; then
	# Assume running from dockerutil repo
	DU_BIN='$(pwd)/bin'
elif [ -d "$(pwd)/dockerutil/.git" ]; then
	# Dockerutil exists
	DU_BIN='$(pwd)/dockerutil/bin'
else
	# Dockerutil doesn't exist
	DU_BIN='$(pwd)/dockerutil/bin'
	echo "Cloning dockerutil repo..."
	echo
	git clone https://github.com/aidanhs/dockerutil.git
	echo
fi

echo 'Now you can run'
echo
echo '    echo -e "\\nexport PATH=\"'"$DU_BIN"':\$PATH\"" >> ~/.bashrc'
echo '    . ~/.bashrc'
echo
echo 'to make the commands available in the current shell and every'
echo 'shell from now on.'

echo
