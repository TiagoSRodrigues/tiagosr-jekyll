# Use the official Jekyll image as the base
FROM jekyll/jekyll:stable as build

# Set the working directory in the container
WORKDIR /srv/jekyll

# Add your site's files to the container
ADD . /srv/jekyll

# Copy the requirements.txt and install_gems.sh into the container
COPY requirements.txt install_gems.sh ./

# Give execution permission to the script
RUN chmod +x install_gems.sh

# Run the script to install gems
RUN ./install_gems.sh

# Your other Dockerfile commands...

# Optionally, build and serve the site with livereload and drafts
# Uncomment the following lines if needed
RUN jekyll build --trace && \
    jekyll serve --livereload --drafts --trace

# The command to run when the container starts
CMD ["jekyll", "serve"]
