#!/gnu/profiles/per-service/hpcguix-web/bin/bash

export SGE_DUMMY=1
cd /gnu/repositories/guix-additions;
/gnu/profiles/base/bin/guixr load-profile /gnu/profiles/per-service/hpcguix-web -- <<EOF
  git reset --hard HEAD;
  git pull;
  make -j32;
EOF
