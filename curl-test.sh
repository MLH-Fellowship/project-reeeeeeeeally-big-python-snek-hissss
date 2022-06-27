#!/bin/bash

echo ""
echo "Get request:"
curl --request GET http://127.0.0.1:5000/api/timeline_post

echo ""
echo "Post request:"
curl --request POST http://127.0.0.1:5000/api/timeline_post -d 'name=somoza&email=somozab@gmail.com&content=Post 1&id=1'
curl --request POST http://127.0.0.1:5000/api/timeline_post -d 'name=somoza&email=somozab@gmail.com&content=Post 2&id=2'
curl --request POST http://127.0.0.1:5000/api/timeline_post -d 'name=somoza&email=somozab@gmail.com&content=Post 3&id=3'

echo ""
echo "Get request to see the new additions to the database:"
curl --request GET http://127.0.0.1:5000/api/timeline_post

#echo ""
#echo "Delete request, deleting the test posts"
#curl --request DELETE http://127.0.0.1:5000/api/timeline_post -d 'id=1'
#curl --request DELETE http://127.0.0.1:5000/api/timeline_post -d 'id=2'
#curl --request DELETE http://127.0.0.1:5000/api/timeline_post -d 'id=3'

#echo ""
#echo "Checking to see if the posts were deleted"
#curl --request GET http://127.0.0.1:5000/api/timeline_post
