#!/bin/bash

. /usr/share/install-libraries/il-lib.sh

pushd /opt/fmc_repository/Blueprints || exit

emit_step "Blueprints from OpenMSA_Blueprints"
ln -fsn ../OpenMSA_Blueprints/Catalog Catalog;
emit_step "CLI tools (TF, kubectl, AWS CLI, Google SDK...)"
install_repo_deps.sh /opt/fmc_repository/Process/cloudclapp-wf/
popd || exit
emit_step "Uninstalling urllib3 for ZAP scan to run"
python3 -m pip uninstall -y urllib3

pushd /opt/fmc_repository/Process/PythonReference || exit
emit_step "Symlink to CCLA_WF"
ln -fsn /opt/fmc_repository/Process/cloudclapp-wf/cloud_sdk ccla_cloud
popd || exit
