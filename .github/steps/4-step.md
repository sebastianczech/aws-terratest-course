<!--
  <<< Author notes: Step 4 >>>
  Start this step by acknowledging the previous step.
  Define terms and link to docs.github.com.
-->

## Step 4: Check if variables values were overridden

_Nicely done with testing idempotence of the infrastructure! :partying_face:_

**What is the goal of step 4 ?**: In fourth step we are going to overrider variables' values used in tests.

### :keyboard: Activity: Check if variables values were overridden

1. [Read Terratest documentation about defining values for variables](https://terratest.gruntwork.io/docs/testing-best-practices/namespacing/)
2. Get latest ``main`` branch: ``git pull``.
3. Go to ``test`` folder using command: ``cd test``
4. Define ``map[string]interface{}`` for ``Vars`` in ``terraformOptions``, where for variable ``prefix`` please set value ``terratest``
5. Execute tests using command: ``go test -v -timeout 30m``
6. Commit changes using command: ``git commit -am "Finish step 4"``.
7. Push changes using command: ``git push``.
8. Wait about 20 seconds then refresh this page (the one you're following instructions from). [GitHub Actions](https://docs.github.com/en/actions) will automatically update to the next step, if your solution is correct. 
9. If next step is not automatially updated, verify results in ``Actions`` tab in GitHub, fix code and repeat steps 4-8 one more time.
