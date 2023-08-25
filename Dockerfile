FROM hub.cs.upb.de/enexa/images/enexa-cel-base:1.0.0
ADD . ./
CMD ./module
# Add ENEXA utils.
COPY --from=hub.cs.upb.de/enexa/images/enexa-utils:1 / /.
