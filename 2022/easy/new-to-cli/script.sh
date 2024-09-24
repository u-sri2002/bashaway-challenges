#!/bin/bash


# get current date and time
current_time(){  
    echo $(date "+%D %H:%M:%S")
}


echo -n "What is your group name: "
read group_name
created_at=$(current_time)

file=$(echo "$group_name" | tr ' ' '_').txt     # if group name has white spaces remove with _

echo "Group name: $group_name" > $file
echo "Created at: $created_at" >> $file
echo "" >> $file

echo -n "How many members in your group: "
read count

# iterate each member in group
for ((i=1; count>=i; i++))
do
    echo -n "Member $i name: "
    read member

    echo -n "Member $i NIC: "
    read NIC

    echo -n "Member $i phone number: "
    read phone

    echo -n "Member $i address: "
    read address

    finished_at=$(current_time)
    echo "Member $i name: $member" >> $file
    echo "Member $i NIC: $NIC" >> $file
    echo "Member $i phone number: $phone" >> $file
    echo "Member $i address: $address" >> $file
    echo "Member $i finished entering details at - $finished_at" >> $file
    echo "" >> $file

done

end_at=$(current_time)
echo "Group $group_name finished script at: $end_at"
echo "Group $group_name finished script at: $end_at" >> $file

if [ -e ${group_name}.txt ] ; then
    echo "Details saved successfully"
else
    echo "File not created"
fi

