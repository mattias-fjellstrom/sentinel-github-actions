sentinel {
  features = {
    terraform = true
  }
}

import "plugin" "tfplan/v2" {
  config = {
    plan_path = "./plan.json"
  }
}

policy "aws_security_groups" {
  source            = "./aws-security-groups.sentinel"
  enforcement_level = "hard-mandatory"
}