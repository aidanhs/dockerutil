set -e

echo

DUBIN=
if [ -d "$(pwd)/.git" ]; then
	# Assume running from dockerutil repo
	DUBIN='$(pwd)/bin'
elif [ -d "$(pwd)/dockerutil/.git" ]; then
	# Dockerutil exists
	DUBIN='$(pwd)/dockerutil/bin'
else
	# Dockerutil doesn't exist
	DUBIN='$(pwd)/dockerutil/bin'
	echo "Cloning dockerutil repo"
	git clone https://github.com/aidanhs/dockerutil.git
fi

echo 'Now you can run'
echo
echo '    echo -e "\\nPATH=\"'"$DUBIN"':\$PATH\"" >> ~/.bashrc'
echo '    . ~/.bashrc'
echo
echo 'to make the commands available in the current shell and every'
echo 'shell from now on.'

echo
