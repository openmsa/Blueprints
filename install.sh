#!/bin/bash

. /usr/share/install-libraries/il-lib.sh

pushd /opt/fmc_repository/Blueprints || exit
emit_step "Blueprints from OpenMSA_Blueprints"
ln -fsn ../OpenMSA_Blueprints/Catalog Catalog;
popd || exit

pushd /opt/fmc_repository/Process/PythonReference || exit
emit_step "Symlink to CCLA SDK"
ln -fsn /opt/fmc_repository/Process/cloudclapp-wf/cloud_sdk ccla_cloud
popd || exit
