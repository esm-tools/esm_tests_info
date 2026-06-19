#!/bin/bash
# set placeholders for ESM-Tools
# The f90nml python package fails with the old %{..} placeholders from 
# the mkexp placeholders
# Sebastian Wahl 05/2021

for f in *_cfg.tmpl ; do
  newname=$(basename $f .tmpl)
  if [ -f $newname ] ; then
    echo "$newname already exists. Will skip $f"
  else
    sed 's/%{.*}/set_by_esm_tools/' $f > $newname
  fi
done
