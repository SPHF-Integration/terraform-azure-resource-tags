# terraform-azure-resource-tags
Terraform modul for å generere tags til Azure ressurser

## For å ta i bruk modul 
Konfigurer modul i main.tf. Sett gjerne verdiene som variabler i variables.tf (hvis du har det). Sett ønsket versjon etter ref=
```
#-------------------------------
# calling the Resource Tags module
#-------------------------------
module "resource_tags" {
  source            = "github.com/SPHF-Integration/terraform-azure-resource-tags?ref=v1.0.0"
  costcenter_tag    = var.costcenter_tag
  criticality_tag   = var.criticality_tag
  contactperson_tag = var.contactperson_tag
  avtalenr_tag      = var.avtalenr_tag
  contactemail_tag  = var.contactemail_tag
}
```

##
Hvordan oppdatere modul

1. Klon koden
```
git clone https://github.com/SPHF-Integration/terraform-azure-resource-tags.git
 ```
2. Gjør endringer
3. Add, commit og push endringene
```
git add .
git commit -m "Lagt til kontaktperson epost"
git push origin main
```
4. Set tag på commit (for å få lagd release)
```
git tag -a v1.1.0 -m "Lagt til kontaktperson epost"
git push origin v1.1.0
```
5. Gå til repo i GitHub og velg Releases. Velg Draft a new release, velg tag og publish
