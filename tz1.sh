#/bin/bash
read input_dir
read output_dir
COUNTER=0
FILES=$(find "$input_dir" -type f)
DIRECTORIES=$(find "$input_dir" -type d)
for file in $FILES
do
	file_name=$(basename "$file")
	extension="${file_name##*.}"
	file_name="${file_name%.*}"
	new_name="${file_name}_${COUNTER}.${extension}"
	cp "$file" "$output_dir/$new_name"
	((COUNTER++))
done
