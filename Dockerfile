FROM python:3.10.14

RUN git clone -b hotfix-ontolearn-webservice https://github.com/dice-group/Ontolearn.git && \
    cd Ontolearn && \
    pip install -e .

ADD . ./
CMD ./module
# Add ENEXA utils.
COPY --from=hub.cs.upb.de/enexa/images/enexa-utils:1 / /.
