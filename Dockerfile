FROM python:3.10-slim
WORKDIR /app
RUN pip install --upgrade pip && \
    pip install -U kernels
RUN pip install InvokeAI --use-pep517 --extra-index-url https://download.pytorch.org/whl/cu121
# ENV INVOKEAI_ROOT=/data/invokeai
EXPOSE 9090
CMD ["invokeai-web", "--host", "0.0.0.0", "--port", "9090"]
