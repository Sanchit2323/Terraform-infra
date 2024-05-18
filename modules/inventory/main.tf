# Generate inventory file
resource "local_file" "inventory" {
 filename = "./inventory/os_hosts"
 content = templatefile("./modules/inventory/inventory.tmpl",
    {
        os_cluster_private_ips = var.os_cluster_private_ips,
        os_cluster_public_ip   = var.os_cluster_public_ip,
    }
 )
}
