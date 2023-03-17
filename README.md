This is the public Sisu Looker Insights extension. Here's how you deploy a new copy of it to experiment-sisu-staging.dev.looker.com.

from within the sisu-insights repo (the private repo, not the public one)
> 
>kal% API_ENVIRONMENT=prod yarn build
> 
>kal% cp dist/Looker.js /path/to/public/repo/Looker.js

NOTE - you need to verify this step, since we've been bad about keeping our public/private repo in sync and there's always
the risk that there's something old in the private repo that we don't want to deploy. So eyeball the file and confirm it 
still makes sense. If you've made local changes to the other files in the public repo, copy 'em back to the private one to
keep them in sync

>kal% cp sisu-looker-insights-extension/* /path/to/public/repo/.

cd into the public repo
 
>kal% git checkout -b 'new-deploy-bump' // or whatever we call it
> 
>kal% git commit . -m 'bumped the deploy'
> 
>kal% git push
> 
then go to github, merge the PR, get the new main sha.
 
finally, go to the looker space and say, "Hey google team - we have a new sha we'd like to deploy on experiment-sisu-staging.dev.looker.com. It's BIGSCARYSHA. Thanks!
 
enjoy a beverage of your choice as google chugs through it and deploys it.
