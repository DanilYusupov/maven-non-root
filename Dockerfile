FROM maven:3.6.3-openjdk-11

RUN useradd -s /bin/bash -m -d /var/maven maven
USER maven

ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
CMD ["mvn"]