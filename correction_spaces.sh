# Remove trailing spaces
sed -i 's/[ \t]*$//' subjects_pre_post.txt

# Convert tabs to spaces
expand -t 1 subjects_pre_post.txt > tmp && mv tmp subjects_pre_post.txt

# Ensure Unix line endings
dos2unix subjects_pre_post.txt