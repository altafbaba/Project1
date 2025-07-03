# Use your custom Apache image as the base
FROM altafma/apache2_server

# Set the working directory to where Apache serves files
WORKDIR /var/www/html

# Remove the default index.html
RUN rm -f index.html

# Copy your custom index.html into the container
COPY ./index.html .

# Expose port 80 for HTTP traffic
EXPOSE 80

# Optional: Start Apache in foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
# test comment

