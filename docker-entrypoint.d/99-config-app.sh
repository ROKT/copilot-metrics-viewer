#!/bin/sh

configTemplateFile=/usr/share/nginx/html-template/app-config.template.js
configTargetFile=/usr/share/nginx/html/assets/app-config.js

envsubst '${VUE_APP_MOCKED_DATA} ${VUE_APP_SCOPE} ${VUE_APP_GITHUB_ORG} ${VUE_APP_GITHUB_ENT} ${VUE_APP_GITHUB_API} ${VUE_APP_GITHUB_TEAM}' <"$configTemplateFile" >"$configTargetFile"
