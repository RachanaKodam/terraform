locals {
  resource_group_name           = "${var.org_name}-${var.rg_prefix}-${var.env}-${var.main_project}-${var.sub_project}"
  storage_account_name          = "${var.org_name}${var.st_prefix}${var.env}${var.main_project}${var.sub_project}"
  servicebus_namespace_name     = "${var.org_name}-${var.sb_prefix}-${var.env}-${var.main_project}-${var.sub_project}"
}

variable "org_name" {
  description = "Azure region to deploy resources in"
  type  = string
  default = "own"
}

variable "rg_prefix" {
  type  = string
  default = "first"
}

variable "st_prefix" {
  type  = string
  default = "stac"
}

variable "sb_prefix" {
  type  = string
  default = "sbn"
}

variable "env" {
  type  = string
  default = "dev"
}

variable "main_project" {
    type  = string
    default = "devops"
}

variable "sub_project" {
    type  = string
    default = "12"
}

variable "location" {
  description = "Azure region to deploy resources in"
  type  = string
  default = "eastus"
}

