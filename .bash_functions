f(){
        find / -iname "$1"
}

#Git
gbdiff(){
    git diff --name-status $1 $2 
}

gdiff(){
    git diff $1 $2 
}

gcb(){
    git checkout -b $1
}

gcam(){
        git commit -am"$1"
}

gcm(){
        git commit -m"$1"
}

gadd(){
        git add $1
}

unstage(){
        git reset HEAD $1
}

gbdel(){
      git branch -d $1  
}

gcheck(){
      git checkout $1  
}

gbdel(){
        git branch -d $1
}

grepirn(){
       grep -irn "$1" .
}

findfolder(){
        find / -iname "$1" -type d
}

findfile(){
        find / -iname "$1"
}

Gen(){
        > $1ControllerTest.php
}
