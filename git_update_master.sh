echo "[AUTOMERGER]"
echo "Checking for repo+branch validity"

current_repo="$(git remote get-url origin)"
current_branch="$(git rev-parse --abbrev-ref HEAD)"

if [ ! "$current_repo" == "https://github.com/Om3n31/cg_back.git" ] || [ ! "$current_branch" == "master" ];then
    echo "You need to be on https://github.com/Om3n31/cg_back.git on branch master"
    echo "You are on $current_repo on branch $current_branch"
    exit 1
fi

echo "Repo and branch are valid, trying to merge and update."

cd ..
git add .
git commit
git push
