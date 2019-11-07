import sys
import zipfile

Z = zipfile.ZipFile(sys.argv[1])
FILELIST = Z.namelist()
fOut = open("output.txt", "w")
F = []
COMMON = []

for i, x in enumerate(FILELIST):
    if (i + 1) < len(FILELIST):
        with Z.open(FILELIST[i]) as f1, Z.open(FILELIST[i + 1]) as f2:
            COMMON = set(f1) & set(f2)
    else:
        with Z.open(FILELIST[i]) as f:
            COMMON = set(COMMON) & set(f)

for line in COMMON:
    print(line.decode('utf-8'))
    fOut.write(line.decode('utf-8'))

Z.close()
fOut.close()