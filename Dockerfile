
# Use an official Node.js runtime as a base image
FROM node

# Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Install dependencies during build (using npm or yarn)
RUN npm install

# Copy the local code to the container
COPY  . .

# Expose the port that the Node server will run on
EXPOSE 5000

# Command to run your application
CMD ["npm", "start"]


#docker build -t node_v .
#docker run -p 5000:5000 node_v
#docker run -d -p 5000:5000 

#glpat-cXiKCrGwzk3A6cunxi7g
#echo glpat-cXiKCrGwzk3A6cunxi7g | docker login registry.gitlab.com -u ankit.kumar.1999.pen  --password-stdin
#docker build -t registry.gitlab.com/docker9880915/docker-node/node_v:1.0 .
#docker push registry.gitlab.com/docker9880915/docker-node/node_v:1.0
#docker login registry.gitlab.com -u ankit.kumar.1999.pen -p glpat-cXiKCrGwzk3A6cunxi7g




#ewoJImF1dGhzIjogewoJCSJyZWdpc3RyeS5naXRsYWIuY29tIjogewoJCQkidXNlcm5hbWUiOiAiYW5raXQua3VtYXIuMTk5OS5wZW4iLAoJCQkicGFzc3dvcmQiOiAiZ2xwYXQtY1hpS0NyR3d6azNBNmN1bnhpN2ciCgkJfQoJfSwKCSJjcmVkc1N0b3JlIjogImRlc2t0b3AiLAoJImN1cnJlbnRDb250ZXh0IjogImRlZmF1bHQiLAoJInBsdWdpbnMiOiB7CgkJIi14LWNsaS1oaW50cyI6IHsKCQkJImVuYWJsZWQiOiAidHJ1ZSIKCQl9Cgl9Cn0=
