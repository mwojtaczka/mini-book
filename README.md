# MINI-BOOK - POC  
Project meant as microservices proof of concept that implements few basic features
associated with social media applications. Most attention currently has been given to 
designing a scalable solution. 

##Features
### Inter users connections  
- sending connection requests
- displaying connection requests
- accepting connection requests
- displaying connections
- real time connection requests delivery

[Design](./design/inter-user-connections/InterUserConnections.md)

### Timeline
- posting announcement
- displaying own announcements
- displaying connected users announcements
- commenting announcement
- real time announcement delivery

[Design](./design/timeline/Timeline.md)

### Chat
- real time chat between connected users
- real time group chat
- messages storage
- message status update

[Design](./design/chat/Chat.md)

### Real time activity
Feature that allows to push data from server to user in real time. 
  
[Design](./design/real-time-activity/RealTimeActivity.md)