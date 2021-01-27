---
title: 'Tasker: Encryption'
---

Encryption ![](icon_tasker.png)
-------------------------------

------------------------------------------------------------------------

**Note:** encryption functions are not available to new customers or in
Play Store versions of Tasker due to US export restrictions.

------------------------------------------------------------------------

Tasker has the ability to encrypt and decrypt files. The relevant
actions are in the *Encryption* action category.

Since decryption can be automated, you have the possibility to keep data
files encrypted outside of certain times, locations, applications etc.

**Warning**: make backups of your files while setting up encryption
until you understand how the system works and are sure the
encryption/decryption process does not cause any corruption.

**Tip**: Tasker does not give progress reports while it\'s doing
encryption, if you want to know when an long decryption operation is
finished, just put a *Vibrate* action or similar after the
*Encrypt/Decrypt* action.

#### Keys

Tasker uses a system of named *keys*. All of the encryption actions can
specify a key name so that you can use different keys with different
files (if desired).

If no key name is specified, **default** is used.

Once a passphrase for a key is entered, the ciphers it generated are
stored in memory until explicitly deleted. The deletion might be
specified after an *Encrypt/ Decrypt File* action, or explicitly with
the *Clear Key* action.

#### Setting Up Encryption

##### General Preferences

First thing to do is check whether the encryption preferences for
**Encryption Iterations** and **Encryption Algorithm** are as you wish.
Once you start encryping things, it\'s time consuming to start again
with new encryption preferences.

The preferences can be found at `Menu / Prefs / Action`. Be sure to have
a look at the help text for each item.

##### Initial Encryption

To start with, you probably want to encrypt some files which are in a
particular directory, which you can then decrypt as they are needed.

To do that, create a task called **Encrypt** or similar and add one or
more *Encrypt File* or *Encrypt Dir* actions to it.

By default, the key is cleared once the file is encrypted, so click
\'Leave Key\' for all but the last action, otherwise you\'ll have to
enter your passphrase for each file.

Next, [create a Tasker shortcut](app_widgets.html) on the home screen,
using the *Encrypt* task. Tap the widget to encrypt your files. Notice
how you are only asked for the passphrase for the first one, because it
is stored until cleared.

The encrypted files will all receive an extension *.tec* and the
original files are deleted.

#### Decryption

Once you have a set of encrypted files, you need to setup the contexts
in which they will be decrypted.

Create another task called *Decrypt* or similar, and add *Decrypt*
actions to it to match the encrypt actions you setup previously.

**Don\'t** click Clear Key, otherwise you\'ll have to enter your
passphrase for every file (and at the start of encryption).

Now you can use your *Encrypt* and *Decrypt* tasks whenever you like.
For instance, you could create a profile with a Location Context and run
your *Decrypt* task when entering the location (assign Decrypt as the
Enter task) and your *Encrypt* task when leaving the location (assign
*Encrypt* as the Exit task).

**Important**: when you use the *Decrypt* action, it recreates the
original file from the encrypted copy, but does **not** delete the
encrypted version.

When you re-encrypt the file, if it has not changed it is simply deleted
since we already have an encrypted copy. If it **has** changed, it is
re-encrypted.

The purpose of this method of operation is to:

-   avoid the lengthy encryption process when unnecessary
-   prevent accidental double-encryption (encrypting the same file
    twice)

#### *Enter Key* Action

It\'s not always convenient to enter the key at the point at which de-
or encryption takes place. This action allows you to specify the
passphrase for a key at a different point.

If you don\'t wish to double-enter a key when encrypting, you can also
use this action before an Encrypt action and not select *Confirm*.

#### *Set Key* Action

To allow full-automation of en/decryption, the passphrase for a key can
also be set without user interaction. However, this is much less secure
tham `Enter Key` because:

-   the passphrase (as part of the action) is stored in **clear text**
    in device memory and could be read by the root user if the device OS
    is compromised
-   although the passphrase is itself encrypted when a backup is made to
    SD, the parameters for that encryption can be recovered from the
    java code in the Tasker apk file

#### Security

##### Algorithm

Tasker uses symmetric encryption, meaning the same passphrase is used
both to encrypt and decrypt the data.

The default algorithm is \"PBEWithMD5And128BitAES-CBC-OpenSSL\". PBE
stands for password-based encryption, see [RFC
2898](http://www.ietf.org/rfc/rfc2898.txt).

A salt is combined with the passphrase several hundreds of times using
the MD5 algorithm to produce a key which is used for the 128-bit
(default setting) AES algorithm.

The number of iterations and algorithm can be set in
`Menu / Prefs / Action`.

##### Pass Phrases

The longer the passphrase, the more secure the data. Minimally 8
characters of mixed alphabetic, numeric and punctuation characters is
recommended.

##### Clearing Keys

While a key\'s ciphers are in memory, anyone can use the key for
decryption or encryption if your device is lost or stolen, so it may be
wise to setup a *Clear Key* action e.g. when the device is turned off
(see Screen Off in the Event Context) or at a particular time (Time
Context), depending on what you are using the encryption for.

##### Manually Encrypting/Decrypting

You can use Tasker\'s file browser (action Browse Files) to
encrypt/decrypt files directly, via a long-click on the file.
