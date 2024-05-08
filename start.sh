if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/manybotts/iboxFilter /iboxFilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /iboxFilter
fi
cd /iboxFilter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
