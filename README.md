<header>

<!--
  <<< Author notes: Course header >>>
  Read <https://skills.github.com/quickstart> for more information about how to build courses using this template.
  Include a 1280×640 image, course name in sentence case, and a concise description in emphasis.
  In your repository settings: enable template repository, add your 1280×640 social image, auto delete head branches.
  Next to "About", add description & tags; disable releases, packages, & environments.
  Add your open source license, GitHub uses the MIT license.
-->

# Test IaC on AWS

_Learn how to test **Infrastructure as Code** on AWS cloud with Terratest._

</header>

<!--
  <<< Author notes: Course start >>>
  Include start button, a note about Actions minutes,
  and tell the learner why they should take the course.
-->

## Welcome

How you ever manually tested infrastructure deployed on AWS ? Is your IaC executed in pipeline ? Do you need automated way to prove, that code, which you prepared, is working ? If you've answere _yes_ for any of this questions, then that course could help you with automating tests of the infrastructure, which you can use in your pipeline and which will help in proving, that code is working as expected.

- **Who is this for**: DevOps engineers, Cloud engineers.
- **What you'll learn**: Build basic tests for IaC on AWS
- **What you'll build**: Tests for simple IaC.
- **Prerequisites**: Basic knowledge about AWS and Terraform.
- **How long**: This course takes less than 1 hour to complete.

In this course, you will:

1. Check out architecture diagram and fill missing parts in Terraform code to deploy infrastructure.
2. Extend skeleton with Terratest to check Terraform output values.
3. Verify if Terraform configuration is idempotent.
4. Override variables values defined in `terraform.tfvars`
5. Destroy whole infrastructure after finishing tests.

### How to start this course

<!-- For start course, run in JavaScript:
'https://github.com/new?' + new URLSearchParams({
  template_owner: 'sebastianczech',
  template_name: 'aws-terratest-course',
  owner: '@me',
  name: 'my-aws-terratest-course',
  description: 'My clone repository of aws-terratest-course',
  visibility: 'public',
}).toString()
-->

[![start-course](https://user-images.githubusercontent.com/1221423/235727646-4a590299-ffe5-480d-8cd5-8194ea184546.svg)](https://github.com/new?template_owner=sebastianczech&template_name=aws-terratest-course&owner=%40me&name=my-aws-terratest-course&description=My+clone+repository+of+aws-terratest-course&visibility=public)

1. Right-click **Start course** and open the link in a new tab.
2. In the new tab, most of the prompts will automatically fill in for you.
   - For owner, choose your personal account or an organization to host the repository.
   - We recommend creating a public repository, as private repositories will [use Actions minutes](https://docs.github.com/en/billing/managing-billing-for-github-actions/about-billing-for-github-actions).
   - Scroll down and click the **Create repository** button at the bottom of the form.
3. After your new repository is created, wait about 20 seconds, then refresh the page. Follow the step-by-step instructions in the new repository's README.

<footer>

<!--
  <<< Author notes: Footer >>>
  Add a link to get support, GitHub status page, code of conduct, license link.
-->

---

Get help: [Contact with author](https://github.com/sebastianczech) &bull; [Review the GitHub status page](https://www.githubstatus.com/)

&copy; 2023 Sebastian Czech &bull; [Code of Conduct](https://www.contributor-covenant.org/version/2/1/code_of_conduct/code_of_conduct.md) &bull; [MIT License](https://gh.io/mit)

</footer>