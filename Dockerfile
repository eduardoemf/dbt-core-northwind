FROM python:3.12-slim

WORKDIR /workspace

# instalar uv
RUN pip install --no-cache-dir uv

# instalar dbt
RUN pip install dbt-postgres

# preparar ambiente python
ENV PATH="/workspace/.venv/bin:$PATH"

# manter container vivo para dev
CMD ["tail", "-f", "/dev/null"]