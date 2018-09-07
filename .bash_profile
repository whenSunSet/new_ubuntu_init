alias delff='delff(){  find . -maxdepth 1 -name $1 -ls -exec trash {} \;}; delff'
alias delff_re='delff_re(){  find . -name $1 -ls -exec trash {} \;}; delff_re'
alias ff_re='ff_re(){  find . -name $1 -ls}; ff_re'
alias ff='ff(){  find . -maxdepth 1 -name $1 -ls}; ff'
