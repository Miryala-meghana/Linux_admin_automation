#LInux Admin AUtomation -System health check script

This project conatains a **system health monitoring script** that works on any ubuntu system

##FEATURES

-Capturs CPU load,memory,disk and network usage
-Lists top 10 memory consuming processes
-Lists top 10 cpu consuming processes
-creates a new log file for **every run**
-Logs stored in the 'logs/' folder



 Setup Instructions

1. Clone the repository
git clone https://github.com/Miryala-meghana/Linux_admin_automation.git
cd Linux_admin_automation

2. Make the script executable
chmod +x systemhealthcheck.sh

3. Run manually
./systemhealthcheck.sh


Logs will be created inside the logs/ folder.

cat logs/health_*.log

-------------------------------------------------------
Automation with Cron
->Step 1: Install cron
apt update -y
apt install cron -y
->Step 2: Enable and start cron service
systemctl enable cron
systemctl start cron

->Check if it’s running:

systemctl status cron
--------------------------------------------------------
To run the script automatically at regular intervals:

Open the cron editor:

crontab -e


Add a schedule. Example: Run every day at 8 AM:

0 8 * * * /path/to/systemhealthcheck.sh


Save and exit.
