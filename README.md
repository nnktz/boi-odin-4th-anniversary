# Server Setup Guide

## Everything has been configured.

---

## Getting Ready

Each Linux distribution corresponds to a specific type of server files. Follow these steps:

1. Download the necessary files.
2. Install the virtual machine (VM) and extract other files.
3. Open your preferred Linux distribution.
4. Choose "I moved it" if prompted.
5. Navigate to the D drive in Windows and extract the corresponding server files.

---

## For Windows Side

### Start/Stop Server:

- Run `Start.bat` to start the server.
- Use `Stop.bat` to stop the server.
- Execute `logcleanup.bat` to clear log files.

### Important Note:

- You can only run one type of file at a time (e.g., starting BOI Odin prevents starting others).
- Refer to WOILC Tuts for tutorials on changing settings and scripts.

---

## For Linux Side

1. Enter username, password, and command.
2. Password is invisible as you type.

### WOI LC Linux:

- Username: root
- Password: antiroot
- Command: `./ar`

### WOI LO Linux:

- Username: root
- Password: 123456
- Command: `./qd`

### BOI Titan:

- Username: root
- Password: dianfeng
- Command: `./qd`

### BOI Odin:

- Username: root
- Password: 123456
- Command: `./ar`

---

## For Client Side

1. Extract your required client.
2. Copy `_startgame.bat` and `ServerList.ini` into the Bin folder.
3. Once both Linux and Windows are loaded successfully, run the game from `_startgame.bat`.

---

## Creating Account

1. Type `192.168.1.88` in your browser.
2. Translate the page if it's in Chinese.
3. Alternatively, use the provided Simple GM Tool - the 2nd tab is for creating an account.

---

## Creating Character

If you face issues with creating character names, follow these steps:

1. Delete existing rows on the database using Navicat (login to the DB and find `shengui -> basetab_sg`, then delete the rows).
2. Create a name with a number ending with an alphabet (e.g., `1111111111a`). If successful, create another character with the desired name.
3. Create random names until you succeed, then perform a name change.

---

## Database Access

Use Navicat with the following settings:

- Name: shengui
- IP: 192.168.1.88:3306
- User: root
- Password: root

---

## For GM CMD

For limited GM command access, use the Simple GM tool to upgrade your status to GM (2nd tab, right-click, first option).

Alternatively, for full GM command access:

- Type in chat `/antiroot` or `/setpower` to activate.
- Follow with the desired GM commands.

### WOI LC:

- `/antiroot`

### WOI LO / BOI Titan / BOI Odin:

- `/setpower`
