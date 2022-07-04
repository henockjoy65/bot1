if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/henockjoy65/bot1.git /bot1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /bot1
fi
cd /bot1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
