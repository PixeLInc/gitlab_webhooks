FROM python:3.7-alpine

COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY ./ /opt/gitlab_webhooks
WORKDIR /opt/gitlab_webhooks

EXPOSE 7777

CMD ["python", "app.py"]
