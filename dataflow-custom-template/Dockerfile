FROM gcr.io/dataflow-templates-base/python39-template-launcher-base:latest

WORKDIR /template

COPY requirements.txt .
RUN pip install --upgrade pip \
 && pip install --no-cache-dir -r requirements.txt

COPY halt_detection_beam_job.py .

ENV FLEX_TEMPLATE_PYTHON_PY_FILE="/template/halt_detection_beam_job.py"