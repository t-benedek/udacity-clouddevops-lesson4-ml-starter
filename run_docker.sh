#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build --tag=ml-housing .

# Step 2: 
docker images

# Step 3: 
docker run -it -p8000:8000 --rm ml-housing
