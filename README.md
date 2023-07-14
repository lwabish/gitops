# gitOps

## prepare

1. checkout code
2. build image
3. login to registry
4. push image
5. install yq
6. use yq to overwrite chart appVersion
7. use GitHub action paths/paths-ignore to limit action trigger and avoid circled actions
8. next, our chart is ready to deploy

## argo cd

1. set up a project to sync this repo chart
2. a public repo doesn't need personal access token, private ones need it.()
