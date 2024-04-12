
{{/*
Create the name of the clusterrole
*/}}
{{- define "clusterrole.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "clusterrole.serviceAccountName" -}}
{{- default (include "clusterrole.fullname" .) .Values.clusterrole.serviceaccount.name }}
{{- end }}

{{/*
Create the name of the secret
*/}}
{{- define "clusterrole.secretName" -}}
{{- default (include "clusterrole.fullname" .) .Values.clusterrole.secret.name }}
{{- end }}

{{/*
Create the name of the clusterrolebinding
*/}}
{{- define "clusterrole.clusterRoleBindingName" -}}
{{- default (include "clusterrole.fullname" .) .Values.clusterrolebinding.name }}
{{- end }}

{{/*
Create default fully qualified app name for clusterrole
*/}}
{{- define "clusterrole.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}