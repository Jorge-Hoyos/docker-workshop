# create a group
groupadd -g GID GROUP_NAME

# create user
useradd -d HOME_DIR -u UID -g GROUPS -m -s /bin/bash USER_NAME

# list users
cat /etc/passwd
