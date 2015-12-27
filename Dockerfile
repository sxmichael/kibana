FROM kibana:4

# here is some workaround for this error:
# Error: EACCES, permission denied '/opt/kibana/optimize/.babelcache.json'
ENV BABEL_CACHE_PATH=/tmp/babelcache.json

RUN /opt/kibana/bin/kibana plugin --install elasticsearch/marvel/latest
RUN /opt/kibana/bin/kibana plugin --install elastic/sense/latest

