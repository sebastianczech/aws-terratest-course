<!--
  <<< Author notes: Step 5 >>>
  Start this step by acknowledging the previous step.
  Define terms and link to docs.github.com.
-->

## Step 5: Check if there is defer with destroy

_Almost there with Terratest! :sparkles:_

**What is the goal of step 5 ?**: In last step we are going to defined defer function used to destroy infrastructure, when our tests fail or pass.

### :keyboard: Activity: Check if there is defer with destroy

1. [Read Terratest documentation about cleanup](https://terratest.gruntwork.io/docs/testing-best-practices/cleanup/)
2. Checkout remote branch using command: ``git checkout -b step5-destroy origin/step5-destroy``.
3. Go to ``test`` folder using command: ``cd test``
4. In line just after defining ``terraformOptions``, add ``defer`` with ``terraform.Destroy``
5. Execute tests using command: ``go test -v -timeout 30m``
6. Commit changes using command: ``git commit -am "Finish step 5"``.
7. Push changes using command: ``git push``.
8. Wait about 20 seconds then refresh this page (the one you're following instructions from). [GitHub Actions](https://docs.github.com/en/actions) will automatically update to the next step, if your solution is correct. 
9. If next step is not automatially updated, verify results in ``Actions`` tab in GitHub, fix code and repeat steps 4-8 one more time.
