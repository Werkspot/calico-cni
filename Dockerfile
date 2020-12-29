FROM bash:5.1

COPY --from=calico/cni:v3.17.1 /opt/cni/bin/ /opt/cni/bin/

ENV PATH=$PATH:/opt/cni/bin
WORKDIR /opt/cni/bin
CMD ["/opt/cni/bin/install"]
