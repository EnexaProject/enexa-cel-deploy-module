FROM python:3.10.14

RUN pip3 install ontolearn==0.7.0

ADD . ./
CMD ./module
# Add ENEXA utils.
COPY --from=hub.cs.upb.de/enexa/images/enexa-utils:1 / /.
