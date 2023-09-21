# Bilde som vi bygger på, kjører en nginx ut av boksen
# https://hub.docker.com/_/nginx
FROM nginx:1.24

# Vi vil gjøre de samme endringene hver gang noe her endrer seg
# så vi holder oss til ett lag
RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends git && \
    git clone https://github.com/Norsk-Programmering/Website && \
    cp -R /Website/public/* /usr/share/nginx/html