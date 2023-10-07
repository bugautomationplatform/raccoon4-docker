#!/bin/bash
if [[ -v "${DEBUG}" ]]; then
    printenv
    echo $@
fi
java -Draccoon.home=$RACCOON_HOME_DIR -Duser.country=$LOCALE_COUNTRY -Duser.language=$LOCALE_LANG -jar /opt/raccoon/raccoon.jar --gp-auth --gp-renew-gsfid --gpa-download-dir $OUT_DIR $@
