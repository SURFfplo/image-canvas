FROM instructure/canvas-lms:stable
USER root
RUN mkdir vendor \
    && cd vendor \
    && git clone https://github.com/instructure/QTIMigrationTool.git QTIMigrationTool \
    && cd QTIMigrationTool \
    && chmod +x migrate.py \
    && bundle exec rake canvas:compile_assets_dev brand_configs:generate_and_upload_all

