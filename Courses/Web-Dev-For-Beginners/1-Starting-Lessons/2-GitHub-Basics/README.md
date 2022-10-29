# Introduction to GitHub

_GitHub is a hosting platform, owned by Microsoft, that offers developers the ability to create code repositories and store them securely in the cloud, using a version control system called Git._

## What is GitHub?
_Here, we discuss the key GitHub features you use on a daily basis to manage and contribute to software projects._

## The GitHub Flow
_GitHub also offers a workflow designed to optimize use of its various features. While this unit offers a cursory overview of important platform components, it's recommended that you first review Understanding the GitHub flow._

## Git and GitHub
_Git is a distributed version control system, which allows multiple developers or other contributors to work on a project. Provides a way to work with one or more local branches and push them to a remote repository. Git is responsible for everything related to GitHub that happens locally on your computer._

### Key features provided by Git include:

- It's installed and used on your local machine.
- Handles version control.
- Supports branching.

_GitHub is a cloud platform that uses Git as its core technology. It simplifies the process of collaborating on projects and provides a website, command-line tools, and overall flow that allows developers and users to work together. GitHub acts as the "remote repository" mentioned previously in the Git section._

### Key features provided by GitHub include:

- Issues
- Discussions
- Pull requests
- Notifications
- Labels
- Actions
- Forks
- Projects

## Branches

_Branches are the preferred way to create changes in the GitHub flow. They provide isolation so that multiple people may simultaneously work on the same code in a controlled way. This model enables stability among critical branches, such as main, while allowing complete freedom for developers to commit any changes they need to meet their goals. Once the code from a branch is ready to become part of the main branch, it may be merged via pull request._

## Commits

_A commit is a change to one or more files on a branch. Every time a commit is created, it's assigned a unique ID and tracked, along with the time and contributor. This provides a clear audit trail for anyone reviewing the history of a file or linked item, such as an issue or pull request._

## Pull Requests

_A pull request is the mechanism used to signal that the commits from one branch are ready to be merged into another branch. The developer submitting the pull request will often request one or more reviewers to verify the code and approve the merge. These reviewers have the opportunity to comment on changes, add their own, or use the pull request itself for further discussion. Once the changes have been approved (if approval is required), the pull request's source branch (the compare branch) may be merged in to the base branch._

## Labels

_Labels provide a way to categorize and organize issues and pull requests in a repository. As you create a GitHub repository several labels will automatically be added for you and new ones can also be created._

### Examples of Labels include:

- bug
- documentation
- duplicate
- help wanted
- enhancement
- question

## Actions

_GitHub actions provide task automation and workflow functionality in a repository. Actions can be used to streamline processes in your software development lifecycle and implement continuous integration and continuous deployment (CI/CD)._

### GitHub Actions are composed of the following components:

- **Workflows:** _Automated processes added to your repository._
- **Events:** _An activity that triggers a workflow._
- **Jobs:** _A set of steps that execute on a runner._
- **Steps:** _A task that can run one or more commands (actions)._
- **Actions:** _Standalone commands that can be combined into steps. Multiple steps can be combined to create a job._
- **Runners:** _Server that has the GitHub Actions runner application installed._

## Cloning and forking

GitHub provides multiple ways to copy a repository so that you can work on it.

- **Cloning a Repository:** _Cloning a repository will make a copy of the repository and its history on your local machine. If you have write access to the repository, you can push changes from your local machine to the remote repository (called the origin) as they're completed. To clone a repository, you can use the git clone [url] command or the GitHub CLI's gh repo clone [url] command._
- **Forking a Repository:** _Forking a repository makes a copy of the repository in your GitHub account. The parent repository is referred to as the upstream while your forked copy is referred to as the origin. Once you've forked a repository into your GitHub account, you can clone it to your local machine. Forking allows you to freely make changes to a project without affecting the original upstream repository. To contribute changes back to the upstream repository, you create a pull request from your forked repository. You can also run git commands to ensure that your local copy stays synced with the upstream repository._

## GitHub Pages

_GitHub Pages is a hosting engine that's built right into your GitHub account. By following a few conventions, and enabling the feature, you can build your own static site generated from HTML and markdown code pulled directly from your repository._
