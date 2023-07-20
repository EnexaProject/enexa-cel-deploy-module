FROM drill-train
ADD . ./
CMD ./module
# Add ENEXA utils.
COPY --from=enexa-utils:1 / /.
