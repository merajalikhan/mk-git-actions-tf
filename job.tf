resource "databricks_job" "this" {
  name = var.job_name
  #existing_cluster_id =  var.existing_dev_cluster_id  #databricks_cluster.this.cluster_id
  existing_cluster_id =  data.databricks_cluster.my_cluster.id  
  notebook_task {
    notebook_path = databricks_notebook.nb2.path
  }
  email_notifications {
    on_success = [var.notification_email]
    on_failure = [var.notification_email]
    on_start = [var.notification_email]
  }
  schedule {
    quartz_cron_expression =  "0 40 16 * * ?" 
    timezone_id = "Europe/London"
  }
}

output "job_url" {
  value = databricks_job.this.url

}
