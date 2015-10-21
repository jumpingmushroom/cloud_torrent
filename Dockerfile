et the base image to ubuntu latest
FROM ubuntu


# File autho / maintainer
MAINTAINER Johnny Antonsen <johnny@jumpingmushroom.com>


# Update the repository sources list
RUN apt-get update


# Install wget and curl so we can get cloud-torrent
RUN apt-get -y install wget curl


# Wget the installation bash script
RUN wget i.jpillora.com/cloud-torrent


# Make sure it's executable
RUN chmod +x cloud-torrent


# Run the installation script
RUN ./cloud-torrent


# Expose the default port
EXPOSE 3000


# Define storage path
VOLUME ["/downloads"]


# Set the flags we're using
CMD ["-t "Cloud-torrent running in docker" -a admin:admin"]


# Define entrypoint
ENTRYPOINT ./cloud-torrent
