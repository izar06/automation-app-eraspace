*** Variables ***
# Skenario 1.1 - data invalid
${PASSWORD_INVALID}         !Qwe1234
${EMAIL_UNVERIFIED}         test123@gmail.com
${EMAIL_WRONG_CREDENTIAL}   user@gmail.com
${EMAIL_UNREGISTERED}       test12@gmail.com

# Pesan error yang diharapkan
${MSG_UNVERIFIED}           Akun belum terverifikasi
${MSG_WRONG_CREDENTIAL}     Email/no. handphone/password salah atau belum terverifikasi. Yuk dicek kembali
${MSG_UNREGISTERED}         Email atau No Handphone belum terdaftar