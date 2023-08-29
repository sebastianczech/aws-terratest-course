<!--
  <<< Author notes: Step 2 >>>
  Start this step by acknowledging the previous step.
  Define terms and link to docs.github.com.
-->

## Step 2: Check in Terratest output values

_You did step 1 and you updated Terraform code correctly! :tada:_

**What is the goal of step 2 ?**: In second step we are going to work on first test in Terratest and we will check outputs from Terraform.

### :keyboard: Activity: Check in Terratest output values

1. [Read Terratest quickstart](https://terratest.gruntwork.io/docs/getting-started/quick-start/)
2. Checkout remote branch using command: ``git checkout -b step2-output origin/step2-output``.
3. Go to ``test`` folder using command: ``cd test``
4. Initialize Go module using command: ``go mod init github.com/YOUR_ACCOUNT/aws-terratest-course`` (remember to replace ``YOUR_ACCOUNT`` with your account name)
5. Add missing and remove unused modules using command: ``go mod tidy``
6. Get outputs from Terraform using ``terraform.Output`` function
7. Execute tests using command: ``go test -v -timeout 30m``
8. Commit changes using command: ``git commit -am "Finish step 2"``.
9. Push changes using command: ``git push``.
10. Wait about 20 seconds then refresh this page (the one you're following instructions from). [GitHub Actions](https://docs.github.com/en/actions) will automatically update to the next step, if your solution is correct. 
11. If next step is not automatially updated, verify results in ``Actions`` tab in GitHub, fix code and repeat steps 6-10 one more time.
