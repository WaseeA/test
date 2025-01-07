ARG TRINO_VERSION=436
FROM nineinchnick/trino-core:$TRINO_VERSION

ARG VERSION

ADD target/test-$VERSION/ /usr/lib/trino/plugin/example_connector/
ADD catalog/example_connector.properties /etc/trino/catalog/example_connector.properties
