{{/* CDXO TEMPLATE HELPER */}}
{{/*
How-To: 
- Create random passwords
- Create random passwords Neo
*/}}

# Namespace
{{- define "codexo.ns" -}}
{{- $clientname := .Values.global.clientName | lower -}}
{{- print $clientname "-ns" -}}
{{- end -}}

# Create Random Password
{{- define "codexo.random" -}}
{{- $random := randAlphaNum 64 -}}
{{- printf "%s" $random -}}
{{- end -}}

# Create Random Secret
{{- define "codexo.neo4jrandom" -}}
{{- $neo4jPass := randAlphaNum 32 -}}
{{- printf "%s" $neo4jPass -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "codexo.labels" -}}
helm.sh/chart: {{ include "codexo.chart" . }}
{{ include "codexo.selectorLabels" . }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "codexo.selectorLabels" -}}
app.kubernetes.io/name: {{ include "codexo.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "codexo.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "codexo.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

# Create Random Secret
{{- define "codexo.mongorandom" -}}
{{- $mongodbPass := randAlphaNum 10 -}}
{{- printf "%s" $mongodbPass -}}
{{- end -}}

{{- define "codexo.getmongoservice" -}}
{{- $release := .Release.Name -}}
{{- printf "%s%s%s" "mongodb-" $release "-svc" -}}
{{- end -}}