#Step 1: Use an official Node.js runtime as a parent image
FROM node:20

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the package.json and package-lock.json to the container
COPY package*.json ./

# Step 4: Install the dependencies inside the container
RUN npm install

# Step 5: Copy the rest of the application code to the container
COPY . .

# Step 6: Expose the port the app will run on (default for Node.js is 3000)
EXPOSE 3000

# Step 7: Define the command to run your app
CMD ["node", "index.js"]
