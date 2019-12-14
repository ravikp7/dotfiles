#!/bin/sh

echo "Pulling latest from upstream..."
cd ~/config-backup
git pull origin master

echo "Copying files"
echo " - Dotfiles"
cd ~
cp -t ~/config-backup/dotfiles/ .vimrc .bashrc .tmux.conf .gitconfig
echo "\nCopied dotfiles"

cd ~/config-backup

echo "Determining changes"
git diff-index --quiet HEAD
exit_status=$?
if [ $exit_status -eq 0 ]
then
  echo "No changes. Exiting!"
else
  echo "Pushing new changes..."
  git add .
  git commit -m "update config"
  git push origin master
  echo "Pushed all changes!"
fi

