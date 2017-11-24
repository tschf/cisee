# Build se2 image from https://github.com/tschf/a-ddb-fork first
FROM oracle/database:12.2.0.1-se2

LABEL maintainer "Trent Schafer"

# Set up a user with the username/password scott/tiger
# You will be able to connect with: sqlplus scott/tiger@orclpdb1
COPY createScott.sh /opt/oracle/

RUN /opt/oracle/createScott.sh
