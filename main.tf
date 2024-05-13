resource "newrelic_one_dashboard" "exampledash" {
  for_each    = var.dashboard
  name        = each.value.name
  permissions = each.value.permissions

  page {
    name = each.value.page_name


    widget_billboard {

      title  = each.value.title
      row    = each.value.row
      column = each.value.column
      width  = each.value.width
      height = each.value.height

      nrql_query {
        query = each.value.query
      }
    }
  }
}