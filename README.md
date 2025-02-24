# GameHub
GameHub is an app for playing simple 2D games made with Godot

Use the latest godot version https://godotengine.org/download/archive/

# Start
Go to your projects folder and open up your Console to clone the repository.
```Console
$ git clone https://github.com/GytisKau/GameHub.git
```
This will create a new `/gamehub` folder with the godot project inside.
Open the project with Godot

# Working
1. Pull the most recent changes from remote
```Console
$ git pull
```
2. Create a new branch to develop your own feature that does not conflict with others. Replace `<BranchName>` by your new feature name, like Tetris-NewShapes
```Console
$ git branch <BranchName>
$ git checkout <BranchName>
```
3. Now you can freely work on your new feature. After your work day, commit changes and push.
```Console
$ git add .
$ git commit -m "Write what changes you did here"
$ git push
```
4. Merge to main after finishing your sprint.
```Console
$ git checkout main
$ git pull
# git merge <BranchName>
```
If you get merge conflicts, google it out idk.
You may have conflicts with new updates if a person commited something whie you were working
