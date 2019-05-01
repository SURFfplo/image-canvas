FROM instructure/canvas-lms:stable
USER root
COPY entrypoint /usr/src/entrypoint
RUN mkdir vendor \
    && cd vendor \
    && git clone https://github.com/instructure/QTIMigrationTool.git QTIMigrationTool \
    && cd QTIMigrationTool \
    && chmod +x migrate.py \
    && chmod 755 /usr/src/entrypoint
