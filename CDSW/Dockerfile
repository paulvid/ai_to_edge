# Dockerfile

FROM docker.repository.cloudera.com/cdsw/engine:7
RUN pip3 install --upgrade pip
RUN pip3 install jupyter

ENTRYPOINT jupyter notebook --no-browser --ip=0.0.0.0 --port=8080 --NotebookApp.token= &
CMD echo "http://"$CDSW_ENGINE_ID"."$CDSW_DOMAIN/
