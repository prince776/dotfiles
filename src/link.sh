envFile=~/.zshenv
if [ -f $envFile ]; then
    echo yes | rm $envFile
fi
ln -s "$PWD/.zshenv" $envFile

configDir=~/.config
if [ -d $configDir ]; then
    echo yes | rm -rf $configDir
fi
ln -s "$PWD/config/" $configDir