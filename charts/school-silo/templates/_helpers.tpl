{{- define "school-silo.labels" -}}
app.kubernetes.io/part-of: lang-learn
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
tenant: {{ .Values.namespace | default .Release.Namespace | quote }}
{{- end }}
