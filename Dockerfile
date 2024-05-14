FROM python:3.10.14

RUN git clone https://github.com/dice-group/Ontolearn.git && \
    cd Ontolearn && \
    git checkout c0bb717c4d49d4f11e37f85f27cbe2dc4fdeebf4 && \
    pip install -e .

ADD . ./
CMD ./module
# Add ENEXA utils.
COPY --from=hub.cs.upb.de/enexa/images/enexa-utils:1 / /.
