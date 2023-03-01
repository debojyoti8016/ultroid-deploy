FROM archlinux:base-devel
RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm \
    python python-pip git curl ffmpeg mediainfo \
    neofetch tmate speedtest-cli
ARG USER=root
USER $USER
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
COPY start.sh start.sh
COPY app.py app.py
EXPOSE 5000
RUN chmod +x /app/start.sh
ENTRYPOINT ["./start.sh"]
