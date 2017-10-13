#!/bin/bash

########################################################################
# Variables for Artifactory
########################################################################

artifactory_start_script=/tmp/runArtifactory.sh

########################################################################
# Variables for certificate import
########################################################################

${IMPORT_CERTIFICATES:=false}

########################################################################
# Variables for backup restore
########################################################################

${RESTORE_BACKUP:=false}
backup_identity_file="${TEMP_DIRECTORY}/id_backup"

########################################################################
# Main script
########################################################################

# Import SSL certificates if requested
if [ "${IMPORT_CERTIFICATES}" != "false" ]; then
	${BASH_SOURCE%/*}/import-jre-certificates.sh -d ${CERTIFICATE_IMPORT_DIRECTORY}
fi

# Restore backup from remote host if requested
if [ "${RESTORE_BACKUP}" != "false" ]; then
	touch ${backup_identity_file} && chmod 600 ${backup_identity_file} && printf -- "${BACKUP_SSH_KEY}" > ${backup_identity_file}
	
	${BASH_SOURCE%/*}/restore-backup.sh -s ${BACKUP_USER}@${BACKUP_HOST}:${BACKUP_PATH} -t ${ARTIFACTORY_HOME} -i ${backup_identity_file}
	
	rm ${backup_identity_file}
	unset BACKUP_SSH_KEY
fi

# Run Artifactory
exec ${artifactory_start_script}
