FROM scratch
ADD amzn-container-minimal-2018.03.0.20180424-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=D_KCpIT4RgFgTnGVHbv96W6XS_GUjpKK" \
 && echo "c0d5af8d6639a719469cd564835831a7cebb8683d40c82ce38172fda5fb43acc /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
