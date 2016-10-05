gemname='page-object'
version=$(gem list $gemname|sed '/page-object/s/page-object (\(.*\))/\1/')
req_version='1.2.0'
if echo $version | grep ','
then
  echo "Multiple versions $version exists for gem $gemname. Required version is $req_version."
  exit 1
else
  if test "$req_version" == "$version"
  then
    echo "Version $version is supported by CLAF"
  else
    echo "Version $version is not supported by CLAF, Please install $req_version version of gem $gemname."
  fi
fi
