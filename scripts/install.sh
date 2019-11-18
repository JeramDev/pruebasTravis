#!/bin/bash

openssl aes-256-cbc -K $encrypted_76760c530019_key -iv $encrypted_76760c530019_iv
  -in travis.enc -out deploy-travis -d

eval $(ssh-agent -s)

chmod 600 deploy-travis

ssh-add deploy-travis