git branch | wc -l 
git remote prune origin
git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -d
git branch | wc -l 
