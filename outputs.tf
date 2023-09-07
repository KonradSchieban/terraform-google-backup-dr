/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "instance_ip_addr" {
  value       = google_compute_instance.appliance.network_interface[0].network_ip
  description = "The private IP address of the BA Appliance."
}

output "ba_randomised_name" {
  value       = local.ba_randomised_name
  description = "GCE VM instance backup metadata in bucket"
}

output "ba_service_account" {
  value       = local.ba_service_account
  description = "BA Appliance service account"
}

output "zone" {
  value       = google_compute_instance.appliance.zone
  description = "Zone where the vm appliance deployed."
}

output "ba_name" {
  value       = google_compute_instance.appliance.name
  description = "Name of the vm appliance."
}

output "ba_project_id" {
  value       = var.ba_project_id
  description = "Project where BA is deployed"
}
