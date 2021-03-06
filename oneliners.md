One liners

## awk

```sh
# Reverse line/row order except header
>awk '{a[NR]=$0} END{print a[1]; for (i=NR; i>1; i--) print a[i]}' hage.csv

# Not show up duplicated rows without sort / ソートしないで重複行を削除する
# https://qiita.com/arcizan/items/9cf19cd982fa65f87546
>awk '!a[$0]++' hage.txt

# Pull each other rows, pull only even/odd rows / 偶数行、奇数行のみの取り出し。
>awk 'NR%2==0' hage.txt     # Even
>awk 'NR%2==1' hage.txt     # Odd

# Skip first line / 1行目をスキップ
>awk 'NR>1 {print}' hage.txt

# KB --> GB
>awk '{printf "%.2f", $2/1024/1024; exit}' /proc/meminfo
```

## cut

```sh
# Show up 2nd column and further, which are separated by space.
# For example, skip history number out of history output.
>history | cut -d' ' -f 4-
```

## sort

```sh
# Sort on 5th column
>sort --field-separator=',' --key=5 hage.csv

# Same thing, with short argument names
>sort -t, -k5 hage.csv

# Same thing, except header
>(head -1 hage.csv ; tail -n +2 hage.csv | sort -t, -k5) | csvlook

# Sort by 5th column in reverse order
>(head -1 hage.csv ; tail -n +2 hage.csv | sort -t, -k5 -n -r) | csvlook

# tac
>history | sort -k1,1nr
```

## find

```sh
# Find files that were updated within 10 days.
>find . -mtime -10 -ls

# Find files that were updated more than 10 days ago.
>find . -mtime +10 -ls

# Using regexp, find files that match to ".bin"
>find . -regex ".*.bin.*" -ls
```

## csvkit

```sh
# Reverse line/row order except header
>csvsort -r hage.csv | csvlook
```

## Links

[Eric Pement/ Handy One-Line scripts for awk](http://www.pement.org/awk/awk1line.txt)

[b4b4r07](https://qiita.com/b4b4r07/items/45d34a434f05aa896d69)
