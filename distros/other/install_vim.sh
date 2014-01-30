command -v vim >/dev/null 2>&1 || {
    distros/other/build_vim.sh
    exit
}

version=`vim --version | grep -Po1 "IMproved (\d\.\d)" | sed s/IMproved\ //g`

if [ `echo $version">"7.3 | bc -l` -eq 1 ]; then
    distros/other/build_vim.sh
fi
