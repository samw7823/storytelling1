Samantha Wiener
srw2168
Storytelling with Streaming Data

Exercise 1

1. I chose to look at the Meetup API, and I looked both at the stream of data
surrounding members RSVP-ing to different events as well as the data
surrounding photos being uploaded. 
I chose to use the Meetup API to look at a stream of photos being uploaded to Meetup.com. 
Each individual message in the output represents a photo being uploaded to Meetup.com. The 
stream outputs about 5 results per minute, with greater traffic at times when many photos 
are being uploaded to the site. The API returns data about the meetup group or event that the 
photo was being uploaded to, and contains information about the event, group and member uploading
the photo, along with additional data. 

2. Please run the script $ sh consume-meetup.sh
The above commandline instruction will run a script that will output the names of the Meetup events that
the members most recently RSVP-ed to. This script uses http://stream.meetup.com/2/rsvps and each message displays
the name of the event that was just RSVP-ed to. I chose to use a loop so that I could include a sleep time that 
could be monitored if I encourated problems with rate limiting. 

3. I created an index.html page to display the results of the meetup API. The page displays the name of the event,
the name of the member updating the group and the url of the photo being uploaded or updated. 
I initially was only displaying the name of the event and the name of the member that was updating 
the event, however, it was confusing to see what distinguished consecutive events when multiple photos were added to the same
event by the same member. 
I chose to add the photo url to show that each of the messages is distinct.
Please see the index.html file in the submission, and please run 
$ python -m SimpleHTTPServer 
to see the web page please visit your localhost page, in my case I ran it on localhost:8000. 

I used Meetup's API to obtain the data: http://www.meetup.com/meetup_api/
