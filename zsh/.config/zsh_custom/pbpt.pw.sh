# https://ptpb.pw
# https://github.com/ptpb/pb
pb () {
    curl -F "c=@${1:--}" https://ptpb.pw/
}

pbc () {
    clipit -c | pb
}
