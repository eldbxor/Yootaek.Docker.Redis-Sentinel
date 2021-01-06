FROM redis:5.0.7


RUN mkdir -p /redis-sentinel/logs
RUN chown -R redis:redis /redis-sentinel
RUN chown -R redis:redis /redis-sentinel/logs

RUN mkdir -p /redis-sentinel/conf

COPY sentinel.conf /redis-sentinel/conf/sentinel.conf

RUN chmod 755 /redis-sentinel/conf/sentinel.conf
RUN chown redis:redis /redis-sentinel/conf/sentinel.conf

ENTRYPOINT ["redis-server", "/redis-sentinel/conf/sentinel.conf"]
CMD ["--sentinel"]
