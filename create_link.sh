# judge file exit
if [ -f ~/.tmux.conf ]
then
# backup file
    mv ~/.tmux.conf "${HOME}/.tmux.conf.bck.$(date +%Y%m%d_%H%M%S)"
    echo "backup original .tmux.conf"
fi
# get new file full name
# link to new file
ln -s "$(pwd)/.tmux.conf" ~/.tmux.conf
echo "Done"
