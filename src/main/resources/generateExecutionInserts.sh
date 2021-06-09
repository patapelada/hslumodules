#!/bin/bash

EXECUTION=1
SEMESTER='HS21'

while read line
do
    module=$( echo $line | cut -f1 -d,)
    moduleId=$(grep \'$module\' data.sql | cut -f2 -d '(' | cut -f1 -d ,)
    echo "/* MODULE $module ($moduleId) */"
    echo "INSERT INTO execution (id, module_id, semester_code) VALUES"
    echo "($EXECUTION,$moduleId,'$SEMESTER');"
    echo "INSERT INTO execution_block(execution_id, block_id) VALUES"

    e1=$(echo "$line" | cut -f2 -d,)
    e2=$(echo "$line" | cut -f3 -d,)
    if [ -n "$e2" ]; then
        echo "($EXECUTION,$e1),($EXECUTION, $e2);"
    else 
        echo "($EXECUTION,$e1);"
    fi
    
    echo ""
    let EXECUTION++
done < executions.csv



