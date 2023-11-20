# Name convention:
if you see same functionality name: share the page and communicate with each other

      Feature file: uS01_Firstname
      EX:           Already Completed 
      
      Pages class:  us01_Firstname_page
      EX:           us01_Awzel_page
      
      Step Definition: us01_Firstname_stepDef
      EX:              us01_Awzel_stepDef

      GIT branch name: us01_Firstname
      EX:              us01_Awzel

# GIT FLOW:
            Branch that we will push changes: develop branch
- write your codes
- do commits
- after last commit
- update your local develop branch ("fetch" and "pull")
- merge develop into your branch
- then you push from your local branch to your origin(remote) branch
- On GIT create a pull request(base:develop, compare:yourBranch) from your origin branch to develop branch
- then assign your assignee(communicate to them(send a discord message))
- If you are APPROVING Pull request
  - Update your local repository, through Fetch/Pull
  - Checkout to your co-worker branch
  - run their code on your computer
  - if it is good then approve the pull request from your coworker branch to Develop 

# SQL+CUCUMBER NOTES
- Everyone has their own User story - see feature file with your name 
- Steps and US are changed by adding your initial at the end of your Scenario steps , to avoid duplication of snippets. This should not affect your process 
- In your Scenario Add @db tag  when you are using DATA BASE connection 
  - Read the hooks before and after method for more information


# IMPORTANT
- do not touch the utilities + Hooks (stays as it is)
- do not push to "backUp" and "master" branches



