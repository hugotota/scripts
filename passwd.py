#!/usr/bin/python

from Crypto.Cipher import AES

passwd = raw_input("Enter your password: ");


def encrypt(plaintext, secret):
    encobj = AES.new(secret, AES.MODE_CFB)
    ciphertext = encobj.encrypt(plaintext)
    return ciphertext

def decrypt(ciphertext, secret):
    encobj = AES.new(secret, AES.MODE_CFB)
    plaintext = encobj.decrypt(ciphertext)
    return plaintext

enc =  encrypt(passwd, "lplplplplplplplp")

print enc

dec = decrypt(enc, "lplplplplplplplp")

print dec

