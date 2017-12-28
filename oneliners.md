One liners

## awk

```sh
# Reverse line/row order except header
>awk '{a[NR]=$0} END{print a[1]; for (i=NR; i>1; i--) print a[i]}' hage.csv
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
```

## csvkit

```sh
# Reverse line/row order except header
>csvsort -r hage.csv | csvlook
```

## Links

[Eric Pement/ Handy One-Line scripts for awk](http://www.pement.org/awk/awk1line.txt)

[b4b4r07](https://qiita.com/b4b4r07/items/45d34a434f05aa896d69)