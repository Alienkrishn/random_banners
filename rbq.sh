#!/data/data/com.termux/files/usr/bin/bash
randomBANNER(){ 
  RANDOMs=$(echo $((0 + $RANDOM % 10)))
  if [[ ${RANDOMs} == "0" ]]; then 
    cat banners/banner.10
  else
    cat banners/banner."${RANDOMs}"
  fi 
}
# Check if quotes.txt exists
if [ ! -f quotes.txt ]; then
    echo "File quotes.txt not found!"
    exit 1
fi

# Get the number of lines in quotes.txt
line_count=$(wc -l < quotes.txt)

# Generate a random line number
random_line=$((RANDOM % line_count + 1))
echo welcome to Termux
randomBANNER
echo ""
# Print the random quote
sed -n "${random_line}p" quotes.txt
