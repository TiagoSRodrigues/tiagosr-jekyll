# Use the official Jekyll image as the base
FROM jekyll/jekyll:stable as build

# Set the working directory in the container
WORKDIR /srv/jekyll

# Add your site's files to the container
ADD . /srv/jekyll


# Install the specific version of bundler required by your Gemfile
RUN gem install bundler -v '~> 2.3.7'

# Remove any existing Gemfile.lock
RUN rm -f Gemfile.lock

# Set permissions (if needed)
RUN chmod -R 777 ${PWD}

# Update and install gems based on your Gemfile
RUN bundle update && bundle install

# Optionally, build and serve the site with livereload and drafts
# Uncomment the following lines if needed
# RUN jekyll build && \
#     jekyll serve --livereload --drafts --trace

# Build command can be passed as an argument
ARG build_command
ENV BUILD_COMMAND ${build_command}

# The command to run when the container starts
CMD ${BUILD_COMMAND}

# Expose the port Jekyll will run on
# EXPOSE 4000
