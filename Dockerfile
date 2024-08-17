# Use the official Golang image to build the binary
FROM golang:1.23 AS builder

# Set the environment variable to disable Go modules
ENV GO111MODULE=off CGO_ENABLED=0

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY main.go .

# Build the Go app with static linking
RUN go build -a -installsuffix cgo -o main .

# Ensure the binary is executable
RUN chmod +x ./main

# Use a minimal base image for the final output
FROM scratch

# Copy the binary from the builder stage
COPY --from=builder /app/main /main

# Expose the port on which the app will run
EXPOSE 8080

# Run the binary
CMD ["./main"]
