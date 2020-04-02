################################################################################
#   Copyright (c) 2020 Nordix Foundation.                                      #
#                                                                              #
#   Licensed under the Apache License, Version 2.0 (the "License");            #
#   you may not use this file except in compliance with the License.           #
#   You may obtain a copy of the License at                                    #
#                                                                              #
#       http://www.apache.org/licenses/LICENSE-2.0                             #
#                                                                              #
#   Unless required by applicable law or agreed to in writing, software        #
#   distributed under the License is distributed on an "AS IS" BASIS,          #
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   #
#   See the License for the specific language governing permissions and        #
#   limitations under the License.                                             #
################################################################################

{{- define "common.name.a1controller" -}}
  {{- printf "a1controller" -}}
{{- end -}}

{{- define "common.namespace.nonrtric" -}}
  {{- printf "nonrtric" -}}
{{- end -}}

{{- define "common.containername.a1controller" -}}
  {{- $name := ( include "common.name.a1controller" . ) -}}
  {{- printf "container-%s" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "common.serviceport.a1controller.internal" -}}8181{{- end -}}

{{- define "common.serviceport.a1controller.external" -}}8282{{- end -}}