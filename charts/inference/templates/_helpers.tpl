{{/*
Reusable labels for inference resources.
*/}}
{{- define "inference.labels" -}}
app.kubernetes.io/name: inference
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
