### Database Schema ###
database schema of Swiftintern website
![Old Schema](https://github.com/faizanayubi/swiftintern/blob/master/application/db/swiftintern.png?raw=true)

New Schema Changes
- messages table (Split it in two because of relevation in mails sent and newsletter etc)
    - conversation
        - user_id
        - property
        - property_id
        - message_id
        - validity
        - created
    - messages
        - subject
        - body
        - created
- metas table (to store meta data)
    - name
    - value
    - property
    - property_id
    - created