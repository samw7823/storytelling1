#!/usr/bin/env bash
# bash command to create a loop that will sleep inbetween requests to meetup api 
while true; do curl --no-buffer -s http://stream.meetup.com/2/rsvps | jq .event.event_name; sleep 2; done
