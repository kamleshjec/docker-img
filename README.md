tekton pipeline example on openshift                               

Scenario: #step1: take the source code from git repo and build container image
#step2: once image is build push that image into image registry

Steps to create tekton pipeline (Everything is based on CRD)

Before creating the tekton CI/CD pipeline, we must have service account and secrets created, created secret must be associted with service account(The one which you are going to use in your pipeline).

    Create tekton task <abed.yaml>- task will have steps.

    Create tekton resources - git(input) and image(output) <xyz.yaml>

    Create tekton taskrun(optional)- if you are not creating one , tekton will create one for you automatically when you run the pipeline, however if you want to test your task outside the pipeline create taskrun manually.

    Create tekton pipeline <xyz.yaml>

    Create tekton pipelinerun <xyz.yaml> (optional)if you will not be creating tekton will create one for you.

Once you everything is ready run your pipeline by using the cmd: #tkn pipeline start

Here are few tekton commands:
tkn task list
tkn res list (res=resources)
tkn taskrun list
tkn pipeline list
tkn pipelinerun list
tkn pipelinerun logs -f -n <namspace-name>
