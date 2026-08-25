# REPO_URL https://github.com/Ajwafarooq/propeller-app

# Step 1 - Create React application
npx create-react-app .

# Step 2 - Initial Git commit
git add .
git commit -m "Initial React application"
git branch -M master

# Step 3 - Push master branch
git push -u origin master

# Step 4 - Create update_logo branch
git checkout -b update_logo

# Step 5 - Replace the React logo
curl -L "https://cdn-ikponof.nitrocdn.com/vGqfYAGlOLDkYkJqZhYIYKEsibdbZnkc/assets/images/optimized/rev-f684a87/www.propelleraero.com/wp-content/uploads/2023/05/footer-logo.svg" -o src/logo.svg

# Step 6 - Update the Propeller Aero link
# Edit src/App.js and replace:
# https://reactjs.org
# with:
# https://www.propelleraero.com/dirtmate/

# Step 7 - Commit and push changes
git add .
git commit -m "Update Propeller Aero logo and link"
git push -u origin update_logo

# Step 8 - Create Pull Request using GitHub CLI
gh pr create --base master --head update_logo --title "Update Propeller Aero logo" --body "Replaced the default React logo and updated the link to the Propeller Aero DirtMate page."

# Step 9 - Merge Pull Request
gh pr merge --merge