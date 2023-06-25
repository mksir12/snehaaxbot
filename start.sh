if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/mksir12/spidey.git /spidey
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /spidey
fi
cd /spidey
pip3 install -U -r requirements.txt
echo "ѕταяτιиg..."
python3 bot.py
