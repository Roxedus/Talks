<!--

---

# Hva er det

- Namespaces
- Isolering
    - Prosesser
    - Nettverk
    - Applikasjoner
- Ikke en vm
- Utbredt navn
- Ikke Kubernetes

Note:
- Født i fra namespace implementasjon i Linux kernel
    - Lar deg kjøre prosesser i samme kernel, uten at de får vite om hverandre
    - Ikke ulikt konseptet med samme navn i OOP
    - Samler ressurser i kontainere
        - Cgroups står for håndteringen av ressurser
        - LXC
            - Bruker samme teknologi, men for et mer fullverdig OS
        - Mye av skille er i verktøyene
- Isolerer prosesser som standard
    - Nettverk er ikke helt isolert som standard
        - Docker compose custom network
    - Applikasjoner er isolert fordi lagring og prosesser er
    - Kan dele andre ressurser ved behov
- Minner mye om en VM
    - Ikke virtualisert, ingen emulering foregår
    - Kan være en grei analogi for å komme igang
- "Kleenex conundrum"
    - IT verdens Kleenex
    - Docker/Container/Pod
    - OCI
        - Standard for bilder
        - Standard for kommandolinje
- Docker er ikke kubernetes
    - Bruker ofte samme runtime
    - k8s følger CNCF standarer som CNI, CSI og CRI (som da følger OCI) -->