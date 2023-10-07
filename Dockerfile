FROM eclipse-temurin:11

RUN mkdir /opt/raccoon
ADD https://raccoon.onyxbits.de/apk-downloader/raccoon-4.24.0.jar /opt/raccoon/raccoon.jar
ADD entrypoint.sh /opt/raccoon/entrypoint.sh

# Mount your configured raccoon home directory
ENV RACCOON_HOME_DIR=/Raccoon
# Mount the output directory 
ENV OUT_DIR=/output
# Locale is used by raccoon to set device country in requests to Google Play
ENV LOCALE_COUNTRY=US
# Locale is used by raccoon to set device country in requests to Google Play
ENV LOCALE_LANG=en

ENTRYPOINT ["/opt/raccoon/entrypoint.sh"]

