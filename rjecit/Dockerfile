FROM python AS rjecit

WORKDIR /apps/rjecit

#COPY requirements.txt /app

RUN apt-get update && \
    apt-get install -y git
RUN git clone https://github.com/ToniKousek/RijecitWebsite.git /apps/rjecit

RUN useradd -b /apps/rjecit rjecit
RUN chown -R rjecit:rjecit /apps/rjecit
USER rjecit

RUN python3 -m venv .venv
ENV PATH=/apps/rjecit/.venv/bin:PATH

RUN pip3 install -r requirements.txt
RUN pip3 install gunicorn

EXPOSE 8002
CMD ["gunicorn", "-w", "3", "-t", "60", "-b", "0.0.0.0:8002", "app:app"]
