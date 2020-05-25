#!/bin/bash


FILENAME=$1
if [ -z $1 ]
  then
    FILENAME='stickman3dfront.sheet';
fi

SEARCHDIR=$2
if [ -z $2 ]
  then
    SEARCHDIR='../shapes/stickman3dfront';
fi

DESCRIPTIONFILE=$3
if [ -z $1 ]
  then
    DESCRIPTIONFILE='../../DESCRIPTION';
fi

echo 'param1: '${FILENAME}
echo 'param2: '${SEARCHDIR}
echo 'param2: '${DESCRIPTIONFILE}


################################################################################
function write_object {
        echo '    <object name="'${SHAPENAME}'">' >> ${FILENAME}
        SHAPEDESC=`grep "Description:" ${CONFFILE}| cut -f2 -d":"`
        echo '    <description>'${SHAPEDESC}'</description>' >> ${FILENAME}
        echo '    </object>' >> ${FILENAME}
        echo '    ' >> ${FILENAME}
}

################################################################################
function write_object_in_folder {

    echo "SHAPEFILES"
    echo "=========="
    echo WORKDIR: ${WORKDIR}
    echo ${SHAPEFILES}
    echo " "

    for i in ${SHAPEFILES[@]}; do
        SHAPENAME=`grep "<name>" $i| cut -f2 -d">"| cut -f1 -d"<"`

        CONFFILE=`basename $i`
        BASNAME="${CONFFILE%.*}"
        CONFFILE=`dirname $i`'/'${BASNAME}'.conf'

        write_object
        
    done
}

################################################################################

NAME=`grep "^Name: " ${DESCRIPTIONFILE} | cut -f2 -d" "`
DESCRIPTION=`grep "^Description: " ${DESCRIPTIONFILE} | cut -f2 -d":"`

SHAPEDIRECTORIES=`find ${SEARCHDIR} -maxdepth 1 -mindepth 1 -type d -print0 | sort -z | xargs -r0`

echo '<?xml version="1.0" encoding="UTF-8" standalone="no"?>'> ${FILENAME}
echo '<sheet xmlns="http://www.lysator.liu.se/~alla/dia/dia-sheet-ns">' >> ${FILENAME}
echo '<name>'${NAME}'</name>' >> ${FILENAME}
echo '<description>'${DESCRIPTION}'</description>' >> ${FILENAME}
echo '    ' >> ${FILENAME}
echo '<contents>' >> ${FILENAME}


for WORKDIR in ${SHAPEDIRECTORIES[@]}; do

    SHAPEFILES=`find ${WORKDIR}  -depth  -type f -name '*.shape' -print0 | sort -z | xargs -r0`
    write_object_in_folder
    echo '    <br/>' >> ${FILENAME}
done

echo '</contents>' >> ${FILENAME}
echo '</sheet>' >> ${FILENAME}

