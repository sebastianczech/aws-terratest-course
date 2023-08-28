<!--
  <<< Author notes: Step 3 >>>
  Start this step by acknowledging the previous step.
  Define terms and link to docs.github.com.
-->

## Step 3: Verify if Terraform configuration is idempotent

_Nice work finishing first test in Terratest :sparkles:_

**What is the goal of step 3 ?**: In third step we are going to check idempotence of the infrastructure deployed by Terraform.

### :keyboard: Activity: Verify if Terraform configuration is idempotent

1. [Read Terratest documentation about function InitAndApplyAndIdempotent()](https://pkg.go.dev/github.com/gruntwork-io/terratest/modules/terraform#InitAndApplyAndIdempotent)
2. Checkout remote branch using command: ``git checkout -b step3-idempotent origin/step3-idempotent``.
3. Go to ``test`` folder using command: ``cd test``
4. Replace ``InitAndApply`` by ``InitAndApplyAndIdempotent`` function
5. Execute tests using command: ``go test -v -timeout 30m``
6. Commit changes using command: ``git commit -am "Finish step 3"``.
7. Push changes using command: ``git push``.
8. Wait about 20 seconds then refresh this page (the one you're following instructions from). [GitHub Actions](https://docs.github.com/en/actions) will automatically update to the next step, if your solution is correct. 
9. If next step is not automatially updated, verify results in ``Actions`` tab in GitHub, fix code and repeat steps 4-8 one more time.
