variable "app" {
  type        = string
  description = "Application or product name (e.g., 'billing')."
}

variable "env" {
  type        = string
  description = "Environment (e.g., 'dev', 'prod')."
}

variable "owner" {
  type        = string
  description = "Owning team or group."
}

variable "data_classification" {
  type        = string
  description = "Data classification label (e.g., 'public', 'internal')."
  default     = "internal"
}

variable "out_dir" {
  type        = string
  description = "Output directory (relative to root module). Must already exist."
  default     = "out"
}