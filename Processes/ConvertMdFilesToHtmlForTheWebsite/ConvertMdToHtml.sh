
# Specify the source directory containing your .md files.
SOURCE_DIR="/home/MNdim/subdense/dashboard"

# Specify the destination directory for .html files.
DEST_DIR="/home/MNdim/subdense/dashboard/Website"


convert_files() {
    local src="$1"
    local dest="$2"

   
    mkdir -p "$dest"

   
    find "$src" -type f -name "*.md" | while read -r file; do

        local relative_path="${file#$src}"
        local dest_file="$dest/${relative_path%.md}.html"

        
        mkdir -p "$(dirname "$dest_file")"

    
        pandoc "$file" -o "$dest_file"
        echo "Converted $file -> $dest_file"
    done
}


convert_files "$SOURCE_DIR" "$DEST_DIR"
