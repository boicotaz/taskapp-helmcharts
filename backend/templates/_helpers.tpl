{{/*
Render the container image string.
Usage: {{ include "taskapp-backend.image" . }}
*/}}
{{- define "taskapp-backend.image" -}}
{{- printf "%s:%s" .Values.image.repository .Values.image.tag }}
{{- end }}

{{/*
Render container resource requests/limits.
Usage: {{ include "taskapp-backend.resources" . }}
*/}}
{{- define "taskapp-backend.resources" -}}
{{- toYaml .Values.resources }}
{{- end }}
