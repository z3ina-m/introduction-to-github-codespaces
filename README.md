# Introduction to GitHub Codespaces and git commands

This activity is designed to prepare you for future Python labs where you will begin each exercise with a starter repository on GitHub. In those labs, you will open the repository in GitHub Codespaces, edit Python files, and run your code directly inside the Codespaces environment. You will also need to push your changes back to GitHub so your work is saved and visible to your instructor, and in some cases, you may need to pull updates from GitHub if new code or instructions are added after you start. By practicing these steps now, you will be able to focus on Python coding in future labs without worrying about learning Git and Codespaces workflow at the same time.

**Goal:**  
1. Open a repository in GitHub Codespaces  
2. Edit a Python file in the Codespaces editor  
3. Use the **terminal** for all Git commands (`status`, `add`, `commit`, `push`, `pull`)  
4. Make a change on GitHub (web) and pull it back into Codespaces  

---

## 1. Open the repo in Codespaces
1. On GitHub, open the repository your instructor provided.  
2. Click **Code → Codespaces → Create codespace on `main`**.  
3. Wait for the Codespace to finish loading.  
4. In the menu, click **Terminal → New Terminal** (you will run all Git commands here).

---

## 2. Check Python & run the program
```bash
python --version     # or: python3 --version
python hello_world.py    # or: python3 hello_world.py
```
Expected output:
```
Hello, World!
```

---

## 3. Edit the file in the Codespaces editor
1. In the **Explorer** panel, click on `hello_world.py`.  
2. Change the line:
   ```python
   print("Hello, World!")
   ```
   to:
   ```python
   print("Hello — I'm <Your Name> (Codespaces edit)")
   ```
3. Save the file (**Ctrl+S** or **Cmd+S**).

---

## 4. View changes in Git
```bash
git status
```
**Explanation:** shows which files were changed. You should see `hello_world.py` listed as modified.

---

## 5. Stage the change
```bash
git add hello_world.py
```
**Explanation:** marks the file’s current version for the next commit.

Check again:
```bash
git status
```

---

## 6. Commit the change
```bash
git commit -m "Update greeting to <Your Name>"
```
**Explanation:** saves a snapshot of the staged changes in your local repository.

Check recent commits:
```bash
git log -n 3 --oneline
```

---

## 7. Push the commit to GitHub
```bash
git push
# if needed for first push:
git push -u origin main
```
**Explanation:** uploads your local commits to the GitHub repository.

---

## 8. Make a change on GitHub (web)
1. In your browser, open `hello_world.py` in the GitHub repo.  
2. Click the pencil icon to edit.  
3. Change the print message again.  
4. Commit directly to `main`.

---

## 9. Pull the web change into Codespaces
In the terminal:
```bash
git pull origin main
```
**Explanation:** downloads and merges the changes from GitHub into your Codespace.

Run the program again to confirm:
```bash
python hello_world.py
```

---

## 10. Git command summary
- `git status` → See which files are changed/staged/untracked.  
- `git add <file>` → Stage changes for commit.  
- `git commit -m "message"` → Save staged changes locally.  
- `git push` → Send local commits to GitHub.  
- `git pull origin main` → Fetch and merge changes from GitHub.

---
