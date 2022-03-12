# ubuntu really
FROM rancher/k3d:5.3.0-dind



# https://github.com/k3d-io/k3d/issues/855
ENTRYPOINT ["dockerd-entrypoint.sh"]