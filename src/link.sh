envFile=~/.zshenv
if [ -f $envFile ]; then
    echo yes | rm $envFile
fi
ln -s "$PWD/.zshenv" $envFile

curl -sS https://starship.rs/install.sh | sh

configDir=~/.config
if [ -d $configDir ]; then
    echo yes | rm -rf $configDir
fi
ln -s "$PWD/config/" $configDir