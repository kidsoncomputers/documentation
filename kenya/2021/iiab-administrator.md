
# General IIAB Administration

----
### SSH Access
From another computer on the same network ("Internet in a Box" wifi network), you can connect to the IIAB server over SSH.  Open a terminal window, then use this command:
 
```
ssh iiab-admin@box
```

Password: `g0adm1n`
 
#### Useful commands:
- `df -h` - show available disk space
- `sudo shutdown -h now` - Shutdown IIAB server


----
### Modules 

Although most modules on IIAB are read-only and do not require any administartion, there are a few that can/should be set up in advance to provide the best experience for lab users.

#### NextCloud
NextCloud is similar to Google Drive, but runs entirely offline ... on the Internet in a Box server.  User account can be created, where users store files and share with each other.

- Administrator Login:
  - Username: `Admin`
  - Password: `changeme`

- Initial Setup Tasks:
  - Change the Admin password.  Share with school administrator.
  - Create additional user account(s), and make them admins as well.  This could be the school's computer teacher or other support staff.
  - Read the user guide to understand what is possible.  This guide is one of the files already included in the admin user's account
  - Teachers should create user accounts for students, and monitor usage and disk space


#### WordPress
WordPress needs to be set up prior to use by students or teachers.  Before allowing access from others, complete the set up steps in the WordPress module.



#### Khan Academy Lite
Khan Academy Lite has an option for users to create accounts and track progress.

- Administrator Login:
  - Username: `Admin`
  - Password: `changeme`

- Initial Setup Tasks:
  - Change the Admin password.  Share with school administrator.
  - Create additional user account(s), and make them admins as well.  This could be the school's computer teacher or other support staff.

