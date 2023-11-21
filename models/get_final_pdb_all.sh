
for f in ls -d auto-drrafter_*/*/*/ auto-drrafter_*/*/*/*/
  do
    if [ ${f: -6:-2} != conf ]; then
      echo $f
      python get_final_pdb.py $f
    fi
  done
