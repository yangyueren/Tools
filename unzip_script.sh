

parent_folder_path=/path/to/folder
cd $parent_folder_path
path=`pwd`
echo "go into folder:" $path

unzipF(){
    echo "first arg" $1
    if [[ $1 == *.xlsx* ]]
    then
        echo "not contain" $1
    else

        cd $1
        zips_folder=`ls . | grep -E "zip|rar" `
        for file in $zips_folder
        do
            echo ${file}
            
            if [[ ${file: -1} == 'p' ]]
            then
                echo "unzip" $file
                unzip $file -d lab
            elif [[ ${file: -1} == 'r' ]]
            then
                echo "unrar x" $file
                unrar x $file
            else
                echo $file
            fi
        done
        cd ..
    fi

}


filelist=`ls .`
for file in $filelist
do 
 unzipF $file
done
