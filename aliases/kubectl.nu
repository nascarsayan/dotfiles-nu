# Copyright 2019 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

export alias k = kubectl
export alias ksys = kubectl --namespace=kube-system
export alias ka = kubectl apply --recursive -f
export alias ksysa = kubectl --namespace=kube-system apply --recursive -f
export alias kak = kubectl apply -k
export alias kk = kubectl kustomize
export alias kex = kubectl exec -i -t
export alias ksysex = kubectl --namespace=kube-system exec -i -t
export alias klo = kubectl logs -f
export alias ksyslo = kubectl --namespace=kube-system logs -f
export alias klop = kubectl logs -f -p
export alias ksyslop = kubectl --namespace=kube-system logs -f -p
export alias kp = kubectl proxy
export alias kpf = kubectl port-forward
export alias kg = kubectl get
export alias ksysg = kubectl --namespace=kube-system get
export alias kd = kubectl describe
export alias ksysd = kubectl --namespace=kube-system describe
export alias krm = kubectl delete
export alias ksysrm = kubectl --namespace=kube-system delete
export alias krun = kubectl run --rm --restart=Never --image-pull-policy=IfNotPresent -i -t
export alias ksysrun = kubectl --namespace=kube-system run --rm --restart=Never --image-pull-policy=IfNotPresent -i -t
export alias kgpo = kubectl get pods
export alias ksysgpo = kubectl --namespace=kube-system get pods
export alias kdpo = kubectl describe pods
export alias ksysdpo = kubectl --namespace=kube-system describe pods
export alias krmpo = kubectl delete pods
export alias ksysrmpo = kubectl --namespace=kube-system delete pods
export alias kgdep = kubectl get deployment
export alias ksysgdep = kubectl --namespace=kube-system get deployment
export alias kddep = kubectl describe deployment
export alias ksysddep = kubectl --namespace=kube-system describe deployment
export alias krmdep = kubectl delete deployment
export alias ksysrmdep = kubectl --namespace=kube-system delete deployment
export alias kgsts = kubectl get statefulset
export alias ksysgsts = kubectl --namespace=kube-system get statefulset
export alias kdsts = kubectl describe statefulset
export alias ksysdsts = kubectl --namespace=kube-system describe statefulset
export alias krmsts = kubectl delete statefulset
export alias ksysrmsts = kubectl --namespace=kube-system delete statefulset
export alias kgsvc = kubectl get service
export alias ksysgsvc = kubectl --namespace=kube-system get service
export alias kdsvc = kubectl describe service
export alias ksysdsvc = kubectl --namespace=kube-system describe service
export alias krmsvc = kubectl delete service
export alias ksysrmsvc = kubectl --namespace=kube-system delete service
export alias kging = kubectl get ingress
export alias ksysging = kubectl --namespace=kube-system get ingress
export alias kding = kubectl describe ingress
export alias ksysding = kubectl --namespace=kube-system describe ingress
export alias krming = kubectl delete ingress
export alias ksysrming = kubectl --namespace=kube-system delete ingress
export alias kgcm = kubectl get configmap
export alias ksysgcm = kubectl --namespace=kube-system get configmap
export alias kdcm = kubectl describe configmap
export alias ksysdcm = kubectl --namespace=kube-system describe configmap
export alias krmcm = kubectl delete configmap
export alias ksysrmcm = kubectl --namespace=kube-system delete configmap
export alias kgsec = kubectl get secret
export alias ksysgsec = kubectl --namespace=kube-system get secret
export alias kdsec = kubectl describe secret
export alias ksysdsec = kubectl --namespace=kube-system describe secret
export alias krmsec = kubectl delete secret
export alias ksysrmsec = kubectl --namespace=kube-system delete secret
export alias kgno = kubectl get nodes
export alias kdno = kubectl describe nodes
export alias kgns = kubectl get namespaces
export alias kdns = kubectl describe namespaces
export alias krmns = kubectl delete namespaces
export alias kgoyaml = kubectl get -o=yaml
export alias ksysgoyaml = kubectl --namespace=kube-system get -o=yaml
export alias kgpooyaml = kubectl get pods -o=yaml
export alias ksysgpooyaml = kubectl --namespace=kube-system get pods -o=yaml
export alias kgdepoyaml = kubectl get deployment -o=yaml
export alias ksysgdepoyaml = kubectl --namespace=kube-system get deployment -o=yaml
export alias kgstsoyaml = kubectl get statefulset -o=yaml
export alias ksysgstsoyaml = kubectl --namespace=kube-system get statefulset -o=yaml
export alias kgsvcoyaml = kubectl get service -o=yaml
export alias ksysgsvcoyaml = kubectl --namespace=kube-system get service -o=yaml
export alias kgingoyaml = kubectl get ingress -o=yaml
export alias ksysgingoyaml = kubectl --namespace=kube-system get ingress -o=yaml
export alias kgcmoyaml = kubectl get configmap -o=yaml
export alias ksysgcmoyaml = kubectl --namespace=kube-system get configmap -o=yaml
export alias kgsecoyaml = kubectl get secret -o=yaml
export alias ksysgsecoyaml = kubectl --namespace=kube-system get secret -o=yaml
export alias kgnooyaml = kubectl get nodes -o=yaml
export alias kgnsoyaml = kubectl get namespaces -o=yaml
export alias kgowide = kubectl get -o=wide
export alias ksysgowide = kubectl --namespace=kube-system get -o=wide
export alias kgpoowide = kubectl get pods -o=wide
export alias ksysgpoowide = kubectl --namespace=kube-system get pods -o=wide
export alias kgdepowide = kubectl get deployment -o=wide
export alias ksysgdepowide = kubectl --namespace=kube-system get deployment -o=wide
export alias kgstsowide = kubectl get statefulset -o=wide
export alias ksysgstsowide = kubectl --namespace=kube-system get statefulset -o=wide
export alias kgsvcowide = kubectl get service -o=wide
export alias ksysgsvcowide = kubectl --namespace=kube-system get service -o=wide
export alias kgingowide = kubectl get ingress -o=wide
export alias ksysgingowide = kubectl --namespace=kube-system get ingress -o=wide
export alias kgcmowide = kubectl get configmap -o=wide
export alias ksysgcmowide = kubectl --namespace=kube-system get configmap -o=wide
export alias kgsecowide = kubectl get secret -o=wide
export alias ksysgsecowide = kubectl --namespace=kube-system get secret -o=wide
export alias kgnoowide = kubectl get nodes -o=wide
export alias kgnsowide = kubectl get namespaces -o=wide
export alias kgojson = kubectl get -o=json
export alias ksysgojson = kubectl --namespace=kube-system get -o=json
export alias kgpoojson = kubectl get pods -o=json
export alias ksysgpoojson = kubectl --namespace=kube-system get pods -o=json
export alias kgdepojson = kubectl get deployment -o=json
export alias ksysgdepojson = kubectl --namespace=kube-system get deployment -o=json
export alias kgstsojson = kubectl get statefulset -o=json
export alias ksysgstsojson = kubectl --namespace=kube-system get statefulset -o=json
export alias kgsvcojson = kubectl get service -o=json
export alias ksysgsvcojson = kubectl --namespace=kube-system get service -o=json
export alias kgingojson = kubectl get ingress -o=json
export alias ksysgingojson = kubectl --namespace=kube-system get ingress -o=json
export alias kgcmojson = kubectl get configmap -o=json
export alias ksysgcmojson = kubectl --namespace=kube-system get configmap -o=json
export alias kgsecojson = kubectl get secret -o=json
export alias ksysgsecojson = kubectl --namespace=kube-system get secret -o=json
export alias kgnoojson = kubectl get nodes -o=json
export alias kgnsojson = kubectl get namespaces -o=json
export alias kgall = kubectl get --all-namespaces
export alias kdall = kubectl describe --all-namespaces
export alias kgpoall = kubectl get pods --all-namespaces
export alias kdpoall = kubectl describe pods --all-namespaces
export alias kgdepall = kubectl get deployment --all-namespaces
export alias kddepall = kubectl describe deployment --all-namespaces
export alias kgstsall = kubectl get statefulset --all-namespaces
export alias kdstsall = kubectl describe statefulset --all-namespaces
export alias kgsvcall = kubectl get service --all-namespaces
export alias kdsvcall = kubectl describe service --all-namespaces
export alias kgingall = kubectl get ingress --all-namespaces
export alias kdingall = kubectl describe ingress --all-namespaces
export alias kgcmall = kubectl get configmap --all-namespaces
export alias kdcmall = kubectl describe configmap --all-namespaces
export alias kgsecall = kubectl get secret --all-namespaces
export alias kdsecall = kubectl describe secret --all-namespaces
export alias kgnsall = kubectl get namespaces --all-namespaces
export alias kdnsall = kubectl describe namespaces --all-namespaces
export alias kgsl = kubectl get --show-labels
export alias ksysgsl = kubectl --namespace=kube-system get --show-labels
export alias kgposl = kubectl get pods --show-labels
export alias ksysgposl = kubectl --namespace=kube-system get pods --show-labels
export alias kgdepsl = kubectl get deployment --show-labels
export alias ksysgdepsl = kubectl --namespace=kube-system get deployment --show-labels
export alias kgstssl = kubectl get statefulset --show-labels
export alias ksysgstssl = kubectl --namespace=kube-system get statefulset --show-labels
export alias kgsvcsl = kubectl get service --show-labels
export alias ksysgsvcsl = kubectl --namespace=kube-system get service --show-labels
export alias kgingsl = kubectl get ingress --show-labels
export alias ksysgingsl = kubectl --namespace=kube-system get ingress --show-labels
export alias kgcmsl = kubectl get configmap --show-labels
export alias ksysgcmsl = kubectl --namespace=kube-system get configmap --show-labels
export alias kgsecsl = kubectl get secret --show-labels
export alias ksysgsecsl = kubectl --namespace=kube-system get secret --show-labels
export alias kgnosl = kubectl get nodes --show-labels
export alias kgnssl = kubectl get namespaces --show-labels
export alias krmall = kubectl delete --all
export alias ksysrmall = kubectl --namespace=kube-system delete --all
export alias krmpoall = kubectl delete pods --all
export alias ksysrmpoall = kubectl --namespace=kube-system delete pods --all
export alias krmdepall = kubectl delete deployment --all
export alias ksysrmdepall = kubectl --namespace=kube-system delete deployment --all
export alias krmstsall = kubectl delete statefulset --all
export alias ksysrmstsall = kubectl --namespace=kube-system delete statefulset --all
export alias krmsvcall = kubectl delete service --all
export alias ksysrmsvcall = kubectl --namespace=kube-system delete service --all
export alias krmingall = kubectl delete ingress --all
export alias ksysrmingall = kubectl --namespace=kube-system delete ingress --all
export alias krmcmall = kubectl delete configmap --all
export alias ksysrmcmall = kubectl --namespace=kube-system delete configmap --all
export alias krmsecall = kubectl delete secret --all
export alias ksysrmsecall = kubectl --namespace=kube-system delete secret --all
export alias krmnsall = kubectl delete namespaces --all
export alias kgw = kubectl get --watch
export alias ksysgw = kubectl --namespace=kube-system get --watch
export alias kgpow = kubectl get pods --watch
export alias ksysgpow = kubectl --namespace=kube-system get pods --watch
export alias kgdepw = kubectl get deployment --watch
export alias ksysgdepw = kubectl --namespace=kube-system get deployment --watch
export alias kgstsw = kubectl get statefulset --watch
export alias ksysgstsw = kubectl --namespace=kube-system get statefulset --watch
export alias kgsvcw = kubectl get service --watch
export alias ksysgsvcw = kubectl --namespace=kube-system get service --watch
export alias kgingw = kubectl get ingress --watch
export alias ksysgingw = kubectl --namespace=kube-system get ingress --watch
export alias kgcmw = kubectl get configmap --watch
export alias ksysgcmw = kubectl --namespace=kube-system get configmap --watch
export alias kgsecw = kubectl get secret --watch
export alias ksysgsecw = kubectl --namespace=kube-system get secret --watch
export alias kgnow = kubectl get nodes --watch
export alias kgnsw = kubectl get namespaces --watch
export alias kgoyamlall = kubectl get -o=yaml --all-namespaces
export alias kgpooyamlall = kubectl get pods -o=yaml --all-namespaces
export alias kgdepoyamlall = kubectl get deployment -o=yaml --all-namespaces
export alias kgstsoyamlall = kubectl get statefulset -o=yaml --all-namespaces
export alias kgsvcoyamlall = kubectl get service -o=yaml --all-namespaces
export alias kgingoyamlall = kubectl get ingress -o=yaml --all-namespaces
export alias kgcmoyamlall = kubectl get configmap -o=yaml --all-namespaces
export alias kgsecoyamlall = kubectl get secret -o=yaml --all-namespaces
export alias kgnsoyamlall = kubectl get namespaces -o=yaml --all-namespaces
export alias kgalloyaml = kubectl get --all-namespaces -o=yaml
export alias kgpoalloyaml = kubectl get pods --all-namespaces -o=yaml
export alias kgdepalloyaml = kubectl get deployment --all-namespaces -o=yaml
export alias kgstsalloyaml = kubectl get statefulset --all-namespaces -o=yaml
export alias kgsvcalloyaml = kubectl get service --all-namespaces -o=yaml
export alias kgingalloyaml = kubectl get ingress --all-namespaces -o=yaml
export alias kgcmalloyaml = kubectl get configmap --all-namespaces -o=yaml
export alias kgsecalloyaml = kubectl get secret --all-namespaces -o=yaml
export alias kgnsalloyaml = kubectl get namespaces --all-namespaces -o=yaml
export alias kgowideall = kubectl get -o=wide --all-namespaces
export alias kgpoowideall = kubectl get pods -o=wide --all-namespaces
export alias kgdepowideall = kubectl get deployment -o=wide --all-namespaces
export alias kgstsowideall = kubectl get statefulset -o=wide --all-namespaces
export alias kgsvcowideall = kubectl get service -o=wide --all-namespaces
export alias kgingowideall = kubectl get ingress -o=wide --all-namespaces
export alias kgcmowideall = kubectl get configmap -o=wide --all-namespaces
export alias kgsecowideall = kubectl get secret -o=wide --all-namespaces
export alias kgnsowideall = kubectl get namespaces -o=wide --all-namespaces
export alias kgallowide = kubectl get --all-namespaces -o=wide
export alias kgpoallowide = kubectl get pods --all-namespaces -o=wide
export alias kgdepallowide = kubectl get deployment --all-namespaces -o=wide
export alias kgstsallowide = kubectl get statefulset --all-namespaces -o=wide
export alias kgsvcallowide = kubectl get service --all-namespaces -o=wide
export alias kgingallowide = kubectl get ingress --all-namespaces -o=wide
export alias kgcmallowide = kubectl get configmap --all-namespaces -o=wide
export alias kgsecallowide = kubectl get secret --all-namespaces -o=wide
export alias kgnsallowide = kubectl get namespaces --all-namespaces -o=wide
export alias kgowidesl = kubectl get -o=wide --show-labels
export alias ksysgowidesl = kubectl --namespace=kube-system get -o=wide --show-labels
export alias kgpoowidesl = kubectl get pods -o=wide --show-labels
export alias ksysgpoowidesl = kubectl --namespace=kube-system get pods -o=wide --show-labels
export alias kgdepowidesl = kubectl get deployment -o=wide --show-labels
export alias ksysgdepowidesl = kubectl --namespace=kube-system get deployment -o=wide --show-labels
export alias kgstsowidesl = kubectl get statefulset -o=wide --show-labels
export alias ksysgstsowidesl = kubectl --namespace=kube-system get statefulset -o=wide --show-labels
export alias kgsvcowidesl = kubectl get service -o=wide --show-labels
export alias ksysgsvcowidesl = kubectl --namespace=kube-system get service -o=wide --show-labels
export alias kgingowidesl = kubectl get ingress -o=wide --show-labels
export alias ksysgingowidesl = kubectl --namespace=kube-system get ingress -o=wide --show-labels
export alias kgcmowidesl = kubectl get configmap -o=wide --show-labels
export alias ksysgcmowidesl = kubectl --namespace=kube-system get configmap -o=wide --show-labels
export alias kgsecowidesl = kubectl get secret -o=wide --show-labels
export alias ksysgsecowidesl = kubectl --namespace=kube-system get secret -o=wide --show-labels
export alias kgnoowidesl = kubectl get nodes -o=wide --show-labels
export alias kgnsowidesl = kubectl get namespaces -o=wide --show-labels
export alias kgslowide = kubectl get --show-labels -o=wide
export alias ksysgslowide = kubectl --namespace=kube-system get --show-labels -o=wide
export alias kgposlowide = kubectl get pods --show-labels -o=wide
export alias ksysgposlowide = kubectl --namespace=kube-system get pods --show-labels -o=wide
export alias kgdepslowide = kubectl get deployment --show-labels -o=wide
export alias ksysgdepslowide = kubectl --namespace=kube-system get deployment --show-labels -o=wide
export alias kgstsslowide = kubectl get statefulset --show-labels -o=wide
export alias ksysgstsslowide = kubectl --namespace=kube-system get statefulset --show-labels -o=wide
export alias kgsvcslowide = kubectl get service --show-labels -o=wide
export alias ksysgsvcslowide = kubectl --namespace=kube-system get service --show-labels -o=wide
export alias kgingslowide = kubectl get ingress --show-labels -o=wide
export alias ksysgingslowide = kubectl --namespace=kube-system get ingress --show-labels -o=wide
export alias kgcmslowide = kubectl get configmap --show-labels -o=wide
export alias ksysgcmslowide = kubectl --namespace=kube-system get configmap --show-labels -o=wide
export alias kgsecslowide = kubectl get secret --show-labels -o=wide
export alias ksysgsecslowide = kubectl --namespace=kube-system get secret --show-labels -o=wide
export alias kgnoslowide = kubectl get nodes --show-labels -o=wide
export alias kgnsslowide = kubectl get namespaces --show-labels -o=wide
export alias kgojsonall = kubectl get -o=json --all-namespaces
export alias kgpoojsonall = kubectl get pods -o=json --all-namespaces
export alias kgdepojsonall = kubectl get deployment -o=json --all-namespaces
export alias kgstsojsonall = kubectl get statefulset -o=json --all-namespaces
export alias kgsvcojsonall = kubectl get service -o=json --all-namespaces
export alias kgingojsonall = kubectl get ingress -o=json --all-namespaces
export alias kgcmojsonall = kubectl get configmap -o=json --all-namespaces
export alias kgsecojsonall = kubectl get secret -o=json --all-namespaces
export alias kgnsojsonall = kubectl get namespaces -o=json --all-namespaces
export alias kgallojson = kubectl get --all-namespaces -o=json
export alias kgpoallojson = kubectl get pods --all-namespaces -o=json
export alias kgdepallojson = kubectl get deployment --all-namespaces -o=json
export alias kgstsallojson = kubectl get statefulset --all-namespaces -o=json
export alias kgsvcallojson = kubectl get service --all-namespaces -o=json
export alias kgingallojson = kubectl get ingress --all-namespaces -o=json
export alias kgcmallojson = kubectl get configmap --all-namespaces -o=json
export alias kgsecallojson = kubectl get secret --all-namespaces -o=json
export alias kgnsallojson = kubectl get namespaces --all-namespaces -o=json
export alias kgallsl = kubectl get --all-namespaces --show-labels
export alias kgpoallsl = kubectl get pods --all-namespaces --show-labels
export alias kgdepallsl = kubectl get deployment --all-namespaces --show-labels
export alias kgstsallsl = kubectl get statefulset --all-namespaces --show-labels
export alias kgsvcallsl = kubectl get service --all-namespaces --show-labels
export alias kgingallsl = kubectl get ingress --all-namespaces --show-labels
export alias kgcmallsl = kubectl get configmap --all-namespaces --show-labels
export alias kgsecallsl = kubectl get secret --all-namespaces --show-labels
export alias kgnsallsl = kubectl get namespaces --all-namespaces --show-labels
export alias kgslall = kubectl get --show-labels --all-namespaces
export alias kgposlall = kubectl get pods --show-labels --all-namespaces
export alias kgdepslall = kubectl get deployment --show-labels --all-namespaces
export alias kgstsslall = kubectl get statefulset --show-labels --all-namespaces
export alias kgsvcslall = kubectl get service --show-labels --all-namespaces
export alias kgingslall = kubectl get ingress --show-labels --all-namespaces
export alias kgcmslall = kubectl get configmap --show-labels --all-namespaces
export alias kgsecslall = kubectl get secret --show-labels --all-namespaces
export alias kgnsslall = kubectl get namespaces --show-labels --all-namespaces
export alias kgallw = kubectl get --all-namespaces --watch
export alias kgpoallw = kubectl get pods --all-namespaces --watch
export alias kgdepallw = kubectl get deployment --all-namespaces --watch
export alias kgstsallw = kubectl get statefulset --all-namespaces --watch
export alias kgsvcallw = kubectl get service --all-namespaces --watch
export alias kgingallw = kubectl get ingress --all-namespaces --watch
export alias kgcmallw = kubectl get configmap --all-namespaces --watch
export alias kgsecallw = kubectl get secret --all-namespaces --watch
export alias kgnsallw = kubectl get namespaces --all-namespaces --watch
export alias kgwall = kubectl get --watch --all-namespaces
export alias kgpowall = kubectl get pods --watch --all-namespaces
export alias kgdepwall = kubectl get deployment --watch --all-namespaces
export alias kgstswall = kubectl get statefulset --watch --all-namespaces
export alias kgsvcwall = kubectl get service --watch --all-namespaces
export alias kgingwall = kubectl get ingress --watch --all-namespaces
export alias kgcmwall = kubectl get configmap --watch --all-namespaces
export alias kgsecwall = kubectl get secret --watch --all-namespaces
export alias kgnswall = kubectl get namespaces --watch --all-namespaces
export alias kgslw = kubectl get --show-labels --watch
export alias ksysgslw = kubectl --namespace=kube-system get --show-labels --watch
export alias kgposlw = kubectl get pods --show-labels --watch
export alias ksysgposlw = kubectl --namespace=kube-system get pods --show-labels --watch
export alias kgdepslw = kubectl get deployment --show-labels --watch
export alias ksysgdepslw = kubectl --namespace=kube-system get deployment --show-labels --watch
export alias kgstsslw = kubectl get statefulset --show-labels --watch
export alias ksysgstsslw = kubectl --namespace=kube-system get statefulset --show-labels --watch
export alias kgsvcslw = kubectl get service --show-labels --watch
export alias ksysgsvcslw = kubectl --namespace=kube-system get service --show-labels --watch
export alias kgingslw = kubectl get ingress --show-labels --watch
export alias ksysgingslw = kubectl --namespace=kube-system get ingress --show-labels --watch
export alias kgcmslw = kubectl get configmap --show-labels --watch
export alias ksysgcmslw = kubectl --namespace=kube-system get configmap --show-labels --watch
export alias kgsecslw = kubectl get secret --show-labels --watch
export alias ksysgsecslw = kubectl --namespace=kube-system get secret --show-labels --watch
export alias kgnoslw = kubectl get nodes --show-labels --watch
export alias kgnsslw = kubectl get namespaces --show-labels --watch
export alias kgwsl = kubectl get --watch --show-labels
export alias ksysgwsl = kubectl --namespace=kube-system get --watch --show-labels
export alias kgpowsl = kubectl get pods --watch --show-labels
export alias ksysgpowsl = kubectl --namespace=kube-system get pods --watch --show-labels
export alias kgdepwsl = kubectl get deployment --watch --show-labels
export alias ksysgdepwsl = kubectl --namespace=kube-system get deployment --watch --show-labels
export alias kgstswsl = kubectl get statefulset --watch --show-labels
export alias ksysgstswsl = kubectl --namespace=kube-system get statefulset --watch --show-labels
export alias kgsvcwsl = kubectl get service --watch --show-labels
export alias ksysgsvcwsl = kubectl --namespace=kube-system get service --watch --show-labels
export alias kgingwsl = kubectl get ingress --watch --show-labels
export alias ksysgingwsl = kubectl --namespace=kube-system get ingress --watch --show-labels
export alias kgcmwsl = kubectl get configmap --watch --show-labels
export alias ksysgcmwsl = kubectl --namespace=kube-system get configmap --watch --show-labels
export alias kgsecwsl = kubectl get secret --watch --show-labels
export alias ksysgsecwsl = kubectl --namespace=kube-system get secret --watch --show-labels
export alias kgnowsl = kubectl get nodes --watch --show-labels
export alias kgnswsl = kubectl get namespaces --watch --show-labels
export alias kgowideallsl = kubectl get -o=wide --all-namespaces --show-labels
export alias kgpoowideallsl = kubectl get pods -o=wide --all-namespaces --show-labels
export alias kgdepowideallsl = kubectl get deployment -o=wide --all-namespaces --show-labels
export alias kgstsowideallsl = kubectl get statefulset -o=wide --all-namespaces --show-labels
export alias kgsvcowideallsl = kubectl get service -o=wide --all-namespaces --show-labels
export alias kgingowideallsl = kubectl get ingress -o=wide --all-namespaces --show-labels
export alias kgcmowideallsl = kubectl get configmap -o=wide --all-namespaces --show-labels
export alias kgsecowideallsl = kubectl get secret -o=wide --all-namespaces --show-labels
export alias kgnsowideallsl = kubectl get namespaces -o=wide --all-namespaces --show-labels
export alias kgowideslall = kubectl get -o=wide --show-labels --all-namespaces
export alias kgpoowideslall = kubectl get pods -o=wide --show-labels --all-namespaces
export alias kgdepowideslall = kubectl get deployment -o=wide --show-labels --all-namespaces
export alias kgstsowideslall = kubectl get statefulset -o=wide --show-labels --all-namespaces
export alias kgsvcowideslall = kubectl get service -o=wide --show-labels --all-namespaces
export alias kgingowideslall = kubectl get ingress -o=wide --show-labels --all-namespaces
export alias kgcmowideslall = kubectl get configmap -o=wide --show-labels --all-namespaces
export alias kgsecowideslall = kubectl get secret -o=wide --show-labels --all-namespaces
export alias kgnsowideslall = kubectl get namespaces -o=wide --show-labels --all-namespaces
export alias kgallowidesl = kubectl get --all-namespaces -o=wide --show-labels
export alias kgpoallowidesl = kubectl get pods --all-namespaces -o=wide --show-labels
export alias kgdepallowidesl = kubectl get deployment --all-namespaces -o=wide --show-labels
export alias kgstsallowidesl = kubectl get statefulset --all-namespaces -o=wide --show-labels
export alias kgsvcallowidesl = kubectl get service --all-namespaces -o=wide --show-labels
export alias kgingallowidesl = kubectl get ingress --all-namespaces -o=wide --show-labels
export alias kgcmallowidesl = kubectl get configmap --all-namespaces -o=wide --show-labels
export alias kgsecallowidesl = kubectl get secret --all-namespaces -o=wide --show-labels
export alias kgnsallowidesl = kubectl get namespaces --all-namespaces -o=wide --show-labels
export alias kgallslowide = kubectl get --all-namespaces --show-labels -o=wide
export alias kgpoallslowide = kubectl get pods --all-namespaces --show-labels -o=wide
export alias kgdepallslowide = kubectl get deployment --all-namespaces --show-labels -o=wide
export alias kgstsallslowide = kubectl get statefulset --all-namespaces --show-labels -o=wide
export alias kgsvcallslowide = kubectl get service --all-namespaces --show-labels -o=wide
export alias kgingallslowide = kubectl get ingress --all-namespaces --show-labels -o=wide
export alias kgcmallslowide = kubectl get configmap --all-namespaces --show-labels -o=wide
export alias kgsecallslowide = kubectl get secret --all-namespaces --show-labels -o=wide
export alias kgnsallslowide = kubectl get namespaces --all-namespaces --show-labels -o=wide
export alias kgslowideall = kubectl get --show-labels -o=wide --all-namespaces
export alias kgposlowideall = kubectl get pods --show-labels -o=wide --all-namespaces
export alias kgdepslowideall = kubectl get deployment --show-labels -o=wide --all-namespaces
export alias kgstsslowideall = kubectl get statefulset --show-labels -o=wide --all-namespaces
export alias kgsvcslowideall = kubectl get service --show-labels -o=wide --all-namespaces
export alias kgingslowideall = kubectl get ingress --show-labels -o=wide --all-namespaces
export alias kgcmslowideall = kubectl get configmap --show-labels -o=wide --all-namespaces
export alias kgsecslowideall = kubectl get secret --show-labels -o=wide --all-namespaces
export alias kgnsslowideall = kubectl get namespaces --show-labels -o=wide --all-namespaces
export alias kgslallowide = kubectl get --show-labels --all-namespaces -o=wide
export alias kgposlallowide = kubectl get pods --show-labels --all-namespaces -o=wide
export alias kgdepslallowide = kubectl get deployment --show-labels --all-namespaces -o=wide
export alias kgstsslallowide = kubectl get statefulset --show-labels --all-namespaces -o=wide
export alias kgsvcslallowide = kubectl get service --show-labels --all-namespaces -o=wide
export alias kgingslallowide = kubectl get ingress --show-labels --all-namespaces -o=wide
export alias kgcmslallowide = kubectl get configmap --show-labels --all-namespaces -o=wide
export alias kgsecslallowide = kubectl get secret --show-labels --all-namespaces -o=wide
export alias kgnsslallowide = kubectl get namespaces --show-labels --all-namespaces -o=wide
export alias kgallslw = kubectl get --all-namespaces --show-labels --watch
export alias kgpoallslw = kubectl get pods --all-namespaces --show-labels --watch
export alias kgdepallslw = kubectl get deployment --all-namespaces --show-labels --watch
export alias kgstsallslw = kubectl get statefulset --all-namespaces --show-labels --watch
export alias kgsvcallslw = kubectl get service --all-namespaces --show-labels --watch
export alias kgingallslw = kubectl get ingress --all-namespaces --show-labels --watch
export alias kgcmallslw = kubectl get configmap --all-namespaces --show-labels --watch
export alias kgsecallslw = kubectl get secret --all-namespaces --show-labels --watch
export alias kgnsallslw = kubectl get namespaces --all-namespaces --show-labels --watch
export alias kgallwsl = kubectl get --all-namespaces --watch --show-labels
export alias kgpoallwsl = kubectl get pods --all-namespaces --watch --show-labels
export alias kgdepallwsl = kubectl get deployment --all-namespaces --watch --show-labels
export alias kgstsallwsl = kubectl get statefulset --all-namespaces --watch --show-labels
export alias kgsvcallwsl = kubectl get service --all-namespaces --watch --show-labels
export alias kgingallwsl = kubectl get ingress --all-namespaces --watch --show-labels
export alias kgcmallwsl = kubectl get configmap --all-namespaces --watch --show-labels
export alias kgsecallwsl = kubectl get secret --all-namespaces --watch --show-labels
export alias kgnsallwsl = kubectl get namespaces --all-namespaces --watch --show-labels
export alias kgslallw = kubectl get --show-labels --all-namespaces --watch
export alias kgposlallw = kubectl get pods --show-labels --all-namespaces --watch
export alias kgdepslallw = kubectl get deployment --show-labels --all-namespaces --watch
export alias kgstsslallw = kubectl get statefulset --show-labels --all-namespaces --watch
export alias kgsvcslallw = kubectl get service --show-labels --all-namespaces --watch
export alias kgingslallw = kubectl get ingress --show-labels --all-namespaces --watch
export alias kgcmslallw = kubectl get configmap --show-labels --all-namespaces --watch
export alias kgsecslallw = kubectl get secret --show-labels --all-namespaces --watch
export alias kgnsslallw = kubectl get namespaces --show-labels --all-namespaces --watch
export alias kgslwall = kubectl get --show-labels --watch --all-namespaces
export alias kgposlwall = kubectl get pods --show-labels --watch --all-namespaces
export alias kgdepslwall = kubectl get deployment --show-labels --watch --all-namespaces
export alias kgstsslwall = kubectl get statefulset --show-labels --watch --all-namespaces
export alias kgsvcslwall = kubectl get service --show-labels --watch --all-namespaces
export alias kgingslwall = kubectl get ingress --show-labels --watch --all-namespaces
export alias kgcmslwall = kubectl get configmap --show-labels --watch --all-namespaces
export alias kgsecslwall = kubectl get secret --show-labels --watch --all-namespaces
export alias kgnsslwall = kubectl get namespaces --show-labels --watch --all-namespaces
export alias kgwallsl = kubectl get --watch --all-namespaces --show-labels
export alias kgpowallsl = kubectl get pods --watch --all-namespaces --show-labels
export alias kgdepwallsl = kubectl get deployment --watch --all-namespaces --show-labels
export alias kgstswallsl = kubectl get statefulset --watch --all-namespaces --show-labels
export alias kgsvcwallsl = kubectl get service --watch --all-namespaces --show-labels
export alias kgingwallsl = kubectl get ingress --watch --all-namespaces --show-labels
export alias kgcmwallsl = kubectl get configmap --watch --all-namespaces --show-labels
export alias kgsecwallsl = kubectl get secret --watch --all-namespaces --show-labels
export alias kgnswallsl = kubectl get namespaces --watch --all-namespaces --show-labels
export alias kgwslall = kubectl get --watch --show-labels --all-namespaces
export alias kgpowslall = kubectl get pods --watch --show-labels --all-namespaces
export alias kgdepwslall = kubectl get deployment --watch --show-labels --all-namespaces
export alias kgstswslall = kubectl get statefulset --watch --show-labels --all-namespaces
export alias kgsvcwslall = kubectl get service --watch --show-labels --all-namespaces
export alias kgingwslall = kubectl get ingress --watch --show-labels --all-namespaces
export alias kgcmwslall = kubectl get configmap --watch --show-labels --all-namespaces
export alias kgsecwslall = kubectl get secret --watch --show-labels --all-namespaces
export alias kgnswslall = kubectl get namespaces --watch --show-labels --all-namespaces
export alias kgf = kubectl get --recursive -f
export alias kdf = kubectl describe --recursive -f
export alias krmf = kubectl delete --recursive -f
export alias kgoyamlf = kubectl get -o=yaml --recursive -f
export alias kgowidef = kubectl get -o=wide --recursive -f
export alias kgojsonf = kubectl get -o=json --recursive -f
export alias kgslf = kubectl get --show-labels --recursive -f
export alias kgwf = kubectl get --watch --recursive -f
export alias kgowideslf = kubectl get -o=wide --show-labels --recursive -f
export alias kgslowidef = kubectl get --show-labels -o=wide --recursive -f
export alias kgslwf = kubectl get --show-labels --watch --recursive -f
export alias kgwslf = kubectl get --watch --show-labels --recursive -f
export alias kgl = kubectl get -l
export alias ksysgl = kubectl --namespace=kube-system get -l
export alias kdl = kubectl describe -l
export alias ksysdl = kubectl --namespace=kube-system describe -l
export alias krml = kubectl delete -l
export alias ksysrml = kubectl --namespace=kube-system delete -l
export alias kgpol = kubectl get pods -l
export alias ksysgpol = kubectl --namespace=kube-system get pods -l
export alias kdpol = kubectl describe pods -l
export alias ksysdpol = kubectl --namespace=kube-system describe pods -l
export alias krmpol = kubectl delete pods -l
export alias ksysrmpol = kubectl --namespace=kube-system delete pods -l
export alias kgdepl = kubectl get deployment -l
export alias ksysgdepl = kubectl --namespace=kube-system get deployment -l
export alias kddepl = kubectl describe deployment -l
export alias ksysddepl = kubectl --namespace=kube-system describe deployment -l
export alias krmdepl = kubectl delete deployment -l
export alias ksysrmdepl = kubectl --namespace=kube-system delete deployment -l
export alias kgstsl = kubectl get statefulset -l
export alias ksysgstsl = kubectl --namespace=kube-system get statefulset -l
export alias kdstsl = kubectl describe statefulset -l
export alias ksysdstsl = kubectl --namespace=kube-system describe statefulset -l
export alias krmstsl = kubectl delete statefulset -l
export alias ksysrmstsl = kubectl --namespace=kube-system delete statefulset -l
export alias kgsvcl = kubectl get service -l
export alias ksysgsvcl = kubectl --namespace=kube-system get service -l
export alias kdsvcl = kubectl describe service -l
export alias ksysdsvcl = kubectl --namespace=kube-system describe service -l
export alias krmsvcl = kubectl delete service -l
export alias ksysrmsvcl = kubectl --namespace=kube-system delete service -l
export alias kgingl = kubectl get ingress -l
export alias ksysgingl = kubectl --namespace=kube-system get ingress -l
export alias kdingl = kubectl describe ingress -l
export alias ksysdingl = kubectl --namespace=kube-system describe ingress -l
export alias krmingl = kubectl delete ingress -l
export alias ksysrmingl = kubectl --namespace=kube-system delete ingress -l
export alias kgcml = kubectl get configmap -l
export alias ksysgcml = kubectl --namespace=kube-system get configmap -l
export alias kdcml = kubectl describe configmap -l
export alias ksysdcml = kubectl --namespace=kube-system describe configmap -l
export alias krmcml = kubectl delete configmap -l
export alias ksysrmcml = kubectl --namespace=kube-system delete configmap -l
export alias kgsecl = kubectl get secret -l
export alias ksysgsecl = kubectl --namespace=kube-system get secret -l
export alias kdsecl = kubectl describe secret -l
export alias ksysdsecl = kubectl --namespace=kube-system describe secret -l
export alias krmsecl = kubectl delete secret -l
export alias ksysrmsecl = kubectl --namespace=kube-system delete secret -l
export alias kgnol = kubectl get nodes -l
export alias kdnol = kubectl describe nodes -l
export alias kgnsl = kubectl get namespaces -l
export alias kdnsl = kubectl describe namespaces -l
export alias krmnsl = kubectl delete namespaces -l
export alias kgoyamll = kubectl get -o=yaml -l
export alias ksysgoyamll = kubectl --namespace=kube-system get -o=yaml -l
export alias kgpooyamll = kubectl get pods -o=yaml -l
export alias ksysgpooyamll = kubectl --namespace=kube-system get pods -o=yaml -l
export alias kgdepoyamll = kubectl get deployment -o=yaml -l
export alias ksysgdepoyamll = kubectl --namespace=kube-system get deployment -o=yaml -l
export alias kgstsoyamll = kubectl get statefulset -o=yaml -l
export alias ksysgstsoyamll = kubectl --namespace=kube-system get statefulset -o=yaml -l
export alias kgsvcoyamll = kubectl get service -o=yaml -l
export alias ksysgsvcoyamll = kubectl --namespace=kube-system get service -o=yaml -l
export alias kgingoyamll = kubectl get ingress -o=yaml -l
export alias ksysgingoyamll = kubectl --namespace=kube-system get ingress -o=yaml -l
export alias kgcmoyamll = kubectl get configmap -o=yaml -l
export alias ksysgcmoyamll = kubectl --namespace=kube-system get configmap -o=yaml -l
export alias kgsecoyamll = kubectl get secret -o=yaml -l
export alias ksysgsecoyamll = kubectl --namespace=kube-system get secret -o=yaml -l
export alias kgnooyamll = kubectl get nodes -o=yaml -l
export alias kgnsoyamll = kubectl get namespaces -o=yaml -l
export alias kgowidel = kubectl get -o=wide -l
export alias ksysgowidel = kubectl --namespace=kube-system get -o=wide -l
export alias kgpoowidel = kubectl get pods -o=wide -l
export alias ksysgpoowidel = kubectl --namespace=kube-system get pods -o=wide -l
export alias kgdepowidel = kubectl get deployment -o=wide -l
export alias ksysgdepowidel = kubectl --namespace=kube-system get deployment -o=wide -l
export alias kgstsowidel = kubectl get statefulset -o=wide -l
export alias ksysgstsowidel = kubectl --namespace=kube-system get statefulset -o=wide -l
export alias kgsvcowidel = kubectl get service -o=wide -l
export alias ksysgsvcowidel = kubectl --namespace=kube-system get service -o=wide -l
export alias kgingowidel = kubectl get ingress -o=wide -l
export alias ksysgingowidel = kubectl --namespace=kube-system get ingress -o=wide -l
export alias kgcmowidel = kubectl get configmap -o=wide -l
export alias ksysgcmowidel = kubectl --namespace=kube-system get configmap -o=wide -l
export alias kgsecowidel = kubectl get secret -o=wide -l
export alias ksysgsecowidel = kubectl --namespace=kube-system get secret -o=wide -l
export alias kgnoowidel = kubectl get nodes -o=wide -l
export alias kgnsowidel = kubectl get namespaces -o=wide -l
export alias kgojsonl = kubectl get -o=json -l
export alias ksysgojsonl = kubectl --namespace=kube-system get -o=json -l
export alias kgpoojsonl = kubectl get pods -o=json -l
export alias ksysgpoojsonl = kubectl --namespace=kube-system get pods -o=json -l
export alias kgdepojsonl = kubectl get deployment -o=json -l
export alias ksysgdepojsonl = kubectl --namespace=kube-system get deployment -o=json -l
export alias kgstsojsonl = kubectl get statefulset -o=json -l
export alias ksysgstsojsonl = kubectl --namespace=kube-system get statefulset -o=json -l
export alias kgsvcojsonl = kubectl get service -o=json -l
export alias ksysgsvcojsonl = kubectl --namespace=kube-system get service -o=json -l
export alias kgingojsonl = kubectl get ingress -o=json -l
export alias ksysgingojsonl = kubectl --namespace=kube-system get ingress -o=json -l
export alias kgcmojsonl = kubectl get configmap -o=json -l
export alias ksysgcmojsonl = kubectl --namespace=kube-system get configmap -o=json -l
export alias kgsecojsonl = kubectl get secret -o=json -l
export alias ksysgsecojsonl = kubectl --namespace=kube-system get secret -o=json -l
export alias kgnoojsonl = kubectl get nodes -o=json -l
export alias kgnsojsonl = kubectl get namespaces -o=json -l
export alias kgsll = kubectl get --show-labels -l
export alias ksysgsll = kubectl --namespace=kube-system get --show-labels -l
export alias kgposll = kubectl get pods --show-labels -l
export alias ksysgposll = kubectl --namespace=kube-system get pods --show-labels -l
export alias kgdepsll = kubectl get deployment --show-labels -l
export alias ksysgdepsll = kubectl --namespace=kube-system get deployment --show-labels -l
export alias kgstssll = kubectl get statefulset --show-labels -l
export alias ksysgstssll = kubectl --namespace=kube-system get statefulset --show-labels -l
export alias kgsvcsll = kubectl get service --show-labels -l
export alias ksysgsvcsll = kubectl --namespace=kube-system get service --show-labels -l
export alias kgingsll = kubectl get ingress --show-labels -l
export alias ksysgingsll = kubectl --namespace=kube-system get ingress --show-labels -l
export alias kgcmsll = kubectl get configmap --show-labels -l
export alias ksysgcmsll = kubectl --namespace=kube-system get configmap --show-labels -l
export alias kgsecsll = kubectl get secret --show-labels -l
export alias ksysgsecsll = kubectl --namespace=kube-system get secret --show-labels -l
export alias kgnosll = kubectl get nodes --show-labels -l
export alias kgnssll = kubectl get namespaces --show-labels -l
export alias kgwl = kubectl get --watch -l
export alias ksysgwl = kubectl --namespace=kube-system get --watch -l
export alias kgpowl = kubectl get pods --watch -l
export alias ksysgpowl = kubectl --namespace=kube-system get pods --watch -l
export alias kgdepwl = kubectl get deployment --watch -l
export alias ksysgdepwl = kubectl --namespace=kube-system get deployment --watch -l
export alias kgstswl = kubectl get statefulset --watch -l
export alias ksysgstswl = kubectl --namespace=kube-system get statefulset --watch -l
export alias kgsvcwl = kubectl get service --watch -l
export alias ksysgsvcwl = kubectl --namespace=kube-system get service --watch -l
export alias kgingwl = kubectl get ingress --watch -l
export alias ksysgingwl = kubectl --namespace=kube-system get ingress --watch -l
export alias kgcmwl = kubectl get configmap --watch -l
export alias ksysgcmwl = kubectl --namespace=kube-system get configmap --watch -l
export alias kgsecwl = kubectl get secret --watch -l
export alias ksysgsecwl = kubectl --namespace=kube-system get secret --watch -l
export alias kgnowl = kubectl get nodes --watch -l
export alias kgnswl = kubectl get namespaces --watch -l
export alias kgowidesll = kubectl get -o=wide --show-labels -l
export alias ksysgowidesll = kubectl --namespace=kube-system get -o=wide --show-labels -l
export alias kgpoowidesll = kubectl get pods -o=wide --show-labels -l
export alias ksysgpoowidesll = kubectl --namespace=kube-system get pods -o=wide --show-labels -l
export alias kgdepowidesll = kubectl get deployment -o=wide --show-labels -l
export alias ksysgdepowidesll = kubectl --namespace=kube-system get deployment -o=wide --show-labels -l
export alias kgstsowidesll = kubectl get statefulset -o=wide --show-labels -l
export alias ksysgstsowidesll = kubectl --namespace=kube-system get statefulset -o=wide --show-labels -l
export alias kgsvcowidesll = kubectl get service -o=wide --show-labels -l
export alias ksysgsvcowidesll = kubectl --namespace=kube-system get service -o=wide --show-labels -l
export alias kgingowidesll = kubectl get ingress -o=wide --show-labels -l
export alias ksysgingowidesll = kubectl --namespace=kube-system get ingress -o=wide --show-labels -l
export alias kgcmowidesll = kubectl get configmap -o=wide --show-labels -l
export alias ksysgcmowidesll = kubectl --namespace=kube-system get configmap -o=wide --show-labels -l
export alias kgsecowidesll = kubectl get secret -o=wide --show-labels -l
export alias ksysgsecowidesll = kubectl --namespace=kube-system get secret -o=wide --show-labels -l
export alias kgnoowidesll = kubectl get nodes -o=wide --show-labels -l
export alias kgnsowidesll = kubectl get namespaces -o=wide --show-labels -l
export alias kgslowidel = kubectl get --show-labels -o=wide -l
export alias ksysgslowidel = kubectl --namespace=kube-system get --show-labels -o=wide -l
export alias kgposlowidel = kubectl get pods --show-labels -o=wide -l
export alias ksysgposlowidel = kubectl --namespace=kube-system get pods --show-labels -o=wide -l
export alias kgdepslowidel = kubectl get deployment --show-labels -o=wide -l
export alias ksysgdepslowidel = kubectl --namespace=kube-system get deployment --show-labels -o=wide -l
export alias kgstsslowidel = kubectl get statefulset --show-labels -o=wide -l
export alias ksysgstsslowidel = kubectl --namespace=kube-system get statefulset --show-labels -o=wide -l
export alias kgsvcslowidel = kubectl get service --show-labels -o=wide -l
export alias ksysgsvcslowidel = kubectl --namespace=kube-system get service --show-labels -o=wide -l
export alias kgingslowidel = kubectl get ingress --show-labels -o=wide -l
export alias ksysgingslowidel = kubectl --namespace=kube-system get ingress --show-labels -o=wide -l
export alias kgcmslowidel = kubectl get configmap --show-labels -o=wide -l
export alias ksysgcmslowidel = kubectl --namespace=kube-system get configmap --show-labels -o=wide -l
export alias kgsecslowidel = kubectl get secret --show-labels -o=wide -l
export alias ksysgsecslowidel = kubectl --namespace=kube-system get secret --show-labels -o=wide -l
export alias kgnoslowidel = kubectl get nodes --show-labels -o=wide -l
export alias kgnsslowidel = kubectl get namespaces --show-labels -o=wide -l
export alias kgslwl = kubectl get --show-labels --watch -l
export alias ksysgslwl = kubectl --namespace=kube-system get --show-labels --watch -l
export alias kgposlwl = kubectl get pods --show-labels --watch -l
export alias ksysgposlwl = kubectl --namespace=kube-system get pods --show-labels --watch -l
export alias kgdepslwl = kubectl get deployment --show-labels --watch -l
export alias ksysgdepslwl = kubectl --namespace=kube-system get deployment --show-labels --watch -l
export alias kgstsslwl = kubectl get statefulset --show-labels --watch -l
export alias ksysgstsslwl = kubectl --namespace=kube-system get statefulset --show-labels --watch -l
export alias kgsvcslwl = kubectl get service --show-labels --watch -l
export alias ksysgsvcslwl = kubectl --namespace=kube-system get service --show-labels --watch -l
export alias kgingslwl = kubectl get ingress --show-labels --watch -l
export alias ksysgingslwl = kubectl --namespace=kube-system get ingress --show-labels --watch -l
export alias kgcmslwl = kubectl get configmap --show-labels --watch -l
export alias ksysgcmslwl = kubectl --namespace=kube-system get configmap --show-labels --watch -l
export alias kgsecslwl = kubectl get secret --show-labels --watch -l
export alias ksysgsecslwl = kubectl --namespace=kube-system get secret --show-labels --watch -l
export alias kgnoslwl = kubectl get nodes --show-labels --watch -l
export alias kgnsslwl = kubectl get namespaces --show-labels --watch -l
export alias kgwsll = kubectl get --watch --show-labels -l
export alias ksysgwsll = kubectl --namespace=kube-system get --watch --show-labels -l
export alias kgpowsll = kubectl get pods --watch --show-labels -l
export alias ksysgpowsll = kubectl --namespace=kube-system get pods --watch --show-labels -l
export alias kgdepwsll = kubectl get deployment --watch --show-labels -l
export alias ksysgdepwsll = kubectl --namespace=kube-system get deployment --watch --show-labels -l
export alias kgstswsll = kubectl get statefulset --watch --show-labels -l
export alias ksysgstswsll = kubectl --namespace=kube-system get statefulset --watch --show-labels -l
export alias kgsvcwsll = kubectl get service --watch --show-labels -l
export alias ksysgsvcwsll = kubectl --namespace=kube-system get service --watch --show-labels -l
export alias kgingwsll = kubectl get ingress --watch --show-labels -l
export alias ksysgingwsll = kubectl --namespace=kube-system get ingress --watch --show-labels -l
export alias kgcmwsll = kubectl get configmap --watch --show-labels -l
export alias ksysgcmwsll = kubectl --namespace=kube-system get configmap --watch --show-labels -l
export alias kgsecwsll = kubectl get secret --watch --show-labels -l
export alias ksysgsecwsll = kubectl --namespace=kube-system get secret --watch --show-labels -l
export alias kgnowsll = kubectl get nodes --watch --show-labels -l
export alias kgnswsll = kubectl get namespaces --watch --show-labels -l
export alias kexn = kubectl exec -i -t --namespace
export alias klon = kubectl logs -f --namespace
export alias kpfn = kubectl port-forward --namespace
export alias kgn = kubectl get --namespace
export alias kdn = kubectl describe --namespace
export alias krmn = kubectl delete --namespace
export alias kgpon = kubectl get pods --namespace
export alias kdpon = kubectl describe pods --namespace
export alias krmpon = kubectl delete pods --namespace
export alias kgdepn = kubectl get deployment --namespace
export alias kddepn = kubectl describe deployment --namespace
export alias krmdepn = kubectl delete deployment --namespace
export alias kgstsn = kubectl get statefulset --namespace
export alias kdstsn = kubectl describe statefulset --namespace
export alias krmstsn = kubectl delete statefulset --namespace
export alias kgsvcn = kubectl get service --namespace
export alias kdsvcn = kubectl describe service --namespace
export alias krmsvcn = kubectl delete service --namespace
export alias kgingn = kubectl get ingress --namespace
export alias kdingn = kubectl describe ingress --namespace
export alias krmingn = kubectl delete ingress --namespace
export alias kgcmn = kubectl get configmap --namespace
export alias kdcmn = kubectl describe configmap --namespace
export alias krmcmn = kubectl delete configmap --namespace
export alias kgsecn = kubectl get secret --namespace
export alias kdsecn = kubectl describe secret --namespace
export alias krmsecn = kubectl delete secret --namespace
export alias kgoyamln = kubectl get -o=yaml --namespace
export alias kgpooyamln = kubectl get pods -o=yaml --namespace
export alias kgdepoyamln = kubectl get deployment -o=yaml --namespace
export alias kgstsoyamln = kubectl get statefulset -o=yaml --namespace
export alias kgsvcoyamln = kubectl get service -o=yaml --namespace
export alias kgingoyamln = kubectl get ingress -o=yaml --namespace
export alias kgcmoyamln = kubectl get configmap -o=yaml --namespace
export alias kgsecoyamln = kubectl get secret -o=yaml --namespace
export alias kgowiden = kubectl get -o=wide --namespace
export alias kgpoowiden = kubectl get pods -o=wide --namespace
export alias kgdepowiden = kubectl get deployment -o=wide --namespace
export alias kgstsowiden = kubectl get statefulset -o=wide --namespace
export alias kgsvcowiden = kubectl get service -o=wide --namespace
export alias kgingowiden = kubectl get ingress -o=wide --namespace
export alias kgcmowiden = kubectl get configmap -o=wide --namespace
export alias kgsecowiden = kubectl get secret -o=wide --namespace
export alias kgojsonn = kubectl get -o=json --namespace
export alias kgpoojsonn = kubectl get pods -o=json --namespace
export alias kgdepojsonn = kubectl get deployment -o=json --namespace
export alias kgstsojsonn = kubectl get statefulset -o=json --namespace
export alias kgsvcojsonn = kubectl get service -o=json --namespace
export alias kgingojsonn = kubectl get ingress -o=json --namespace
export alias kgcmojsonn = kubectl get configmap -o=json --namespace
export alias kgsecojsonn = kubectl get secret -o=json --namespace
export alias kgsln = kubectl get --show-labels --namespace
export alias kgposln = kubectl get pods --show-labels --namespace
export alias kgdepsln = kubectl get deployment --show-labels --namespace
export alias kgstssln = kubectl get statefulset --show-labels --namespace
export alias kgsvcsln = kubectl get service --show-labels --namespace
export alias kgingsln = kubectl get ingress --show-labels --namespace
export alias kgcmsln = kubectl get configmap --show-labels --namespace
export alias kgsecsln = kubectl get secret --show-labels --namespace
export alias kgwn = kubectl get --watch --namespace
export alias kgpown = kubectl get pods --watch --namespace
export alias kgdepwn = kubectl get deployment --watch --namespace
export alias kgstswn = kubectl get statefulset --watch --namespace
export alias kgsvcwn = kubectl get service --watch --namespace
export alias kgingwn = kubectl get ingress --watch --namespace
export alias kgcmwn = kubectl get configmap --watch --namespace
export alias kgsecwn = kubectl get secret --watch --namespace
export alias kgowidesln = kubectl get -o=wide --show-labels --namespace
export alias kgpoowidesln = kubectl get pods -o=wide --show-labels --namespace
export alias kgdepowidesln = kubectl get deployment -o=wide --show-labels --namespace
export alias kgstsowidesln = kubectl get statefulset -o=wide --show-labels --namespace
export alias kgsvcowidesln = kubectl get service -o=wide --show-labels --namespace
export alias kgingowidesln = kubectl get ingress -o=wide --show-labels --namespace
export alias kgcmowidesln = kubectl get configmap -o=wide --show-labels --namespace
export alias kgsecowidesln = kubectl get secret -o=wide --show-labels --namespace
export alias kgslowiden = kubectl get --show-labels -o=wide --namespace
export alias kgposlowiden = kubectl get pods --show-labels -o=wide --namespace
export alias kgdepslowiden = kubectl get deployment --show-labels -o=wide --namespace
export alias kgstsslowiden = kubectl get statefulset --show-labels -o=wide --namespace
export alias kgsvcslowiden = kubectl get service --show-labels -o=wide --namespace
export alias kgingslowiden = kubectl get ingress --show-labels -o=wide --namespace
export alias kgcmslowiden = kubectl get configmap --show-labels -o=wide --namespace
export alias kgsecslowiden = kubectl get secret --show-labels -o=wide --namespace
export alias kgslwn = kubectl get --show-labels --watch --namespace
export alias kgposlwn = kubectl get pods --show-labels --watch --namespace
export alias kgdepslwn = kubectl get deployment --show-labels --watch --namespace
export alias kgstsslwn = kubectl get statefulset --show-labels --watch --namespace
export alias kgsvcslwn = kubectl get service --show-labels --watch --namespace
export alias kgingslwn = kubectl get ingress --show-labels --watch --namespace
export alias kgcmslwn = kubectl get configmap --show-labels --watch --namespace
export alias kgsecslwn = kubectl get secret --show-labels --watch --namespace
export alias kgwsln = kubectl get --watch --show-labels --namespace
export alias kgpowsln = kubectl get pods --watch --show-labels --namespace
export alias kgdepwsln = kubectl get deployment --watch --show-labels --namespace
export alias kgstswsln = kubectl get statefulset --watch --show-labels --namespace
export alias kgsvcwsln = kubectl get service --watch --show-labels --namespace
export alias kgingwsln = kubectl get ingress --watch --show-labels --namespace
export alias kgcmwsln = kubectl get configmap --watch --show-labels --namespace
export alias kgsecwsln = kubectl get secret --watch --show-labels --namespace
