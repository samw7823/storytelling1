#!/usr/bin/env bash

while true; do curl --no-buffer -s http://stream.meetup.com/2/rsvps | jq .event.event_name; sleep 2; done
