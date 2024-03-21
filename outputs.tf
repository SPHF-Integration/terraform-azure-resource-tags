output "tags" {
  description = "A map of tags to be applied to Azure resources."
  value = {
    CostCenter    = var.costcenter_tag
    Criticality   = var.criticality_tag
    AvtaleNr      = var.avtalenr_tag
    ContactPerson = var.contactperson_tag
  }
}
