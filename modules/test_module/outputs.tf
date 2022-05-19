output "instance_id" {
  value = aws_instance.test_inst.id
}

output "public_dns" {
  value = aws_instance.test_inst.public_dns
}

output "db_endpoint" {
  value = aws_db_instance.alexeev-db-tf.endpoint
}