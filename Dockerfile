FROM python:3.10.14

RUN pip install ontolearn==0.9.2

ADD . ./
CMD ./module
# Add ENEXA utils.
COPY --from=hub.cs.upb.de/enexa/images/enexa-utils:1 / /.
