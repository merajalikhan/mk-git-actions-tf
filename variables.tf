variable "notebook_subdirectory" {
  description = "A name for the subdirectory to store the notebook."
  type        = string
  default     = "Deployed by Terraform"
}

variable "notebook_filename" {
  description = "The notebook's filename."
  type        = string
}

variable "notebook_language" {
  description = "The language of the notebook."
  type        = string
}

variable "notebooks_folder" {
  description = "The folders for the notebooks."
  type        = string
}
#variable "cluster_name"{
#    type        = string
#}
variable "notification_email" {
  description = "The email to sent notification to."
  type        = string
}
variable "job_name" {
  description = "Job to orchestrate notebooks"
  type        = string
  default     = "Demo Job"
}

variable existing_dev_cluster_id{
  description = "current cluster id"
  type = string
}

variable existing_qa_cluster_id{
  description = "current qa cluster id"
  type = string
}

variable cluster_name{
  description = "new cluster name"
  type = string
}




