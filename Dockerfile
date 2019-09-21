FROM alpine
ADD . /app
WORKDIR /app
RUN apk add python3 py-pip && \
pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
