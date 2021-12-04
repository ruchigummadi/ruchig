# Select a base image
FROM python:3-slim

#The next steps are to prepare the container by setting the working directory and copying in the necessary files. To set the working directory, use the WORKDIR keyword, then use COPY to copy files:

# Set the working directory for the app and copy files into the container
WORKDIR /usr/src/app
COPY . .

Now that we have the files, we can install the dependencies for our web app. We've listed the dependencies in the requirements.txt file already, so you can use the RUN keyword, followed by a Now, that we have the files, we can install the dependencies.

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

#The next step is to specify the port that needs to be exposed. Our app runs on port 5000, so we'll specify that with the EXPOSE keyword:

# Define exposed ports
EXPOSE 5000

#Finally, we need the container to run the app. In order to do this, we'll use the CMD keyword. The CMD keyword is used to tell the container what to run when started, in this case we want to execute python ./appso, we specify that using the following syntax:

# Instruct the container to run the app
CMD ["python", "./app.py"]
