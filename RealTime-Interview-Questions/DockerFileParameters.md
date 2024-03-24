# In a Dockerfile, there are several instructions, each with its own set of parameters or attributes. Here's a list of some of the most common Dockerfile instructions along with their parameters:

# Syntax: FROM <image>[:<tag>] [AS <name>]

FROM: Specifies the base image to use for the subsequent build steps.

# Syntax: MAINTAINER <name>
MAINTAINER: Specifies the name and email of the image maintainer (deprecated, use LABEL instead).

# Syntax: LABEL <key>=<value>
LABEL: Adds metadata to an image. Commonly used for providing information about the image, such as version, description, and maintainer.

# Syntax: RUN <command>
RUN: Executes commands in the shell of the container.

# Syntax: CMD ["executable", "param1", "param2"] (exec form) or CMD command param1 param2 (shell form)
CMD: Specifies the default command to run when the container starts. It can be overridden by providing a command at runtime.

# Syntax: EXPOSE <port> [<port>/<protocol>]...
EXPOSE: Informs Docker that the container listens on specific network ports at runtime.

# Syntax: ENV <key> <value> or ENV <key>=<value>
ENV: Sets environment variables in the container.

# Syntax: ADD <src> <dest>
ADD: Copies files, directories, or remote URLs from the build context or from a URL into the container.

# Syntax: COPY <src> <dest>
COPY: Copies files or directories from the build context into the container.

# Syntax: ENTRYPOINT ["executable", "param1", "param2"] (exec form) or ENTRYPOINT command param1 param2 (shell form)
ENTRYPOINT: Configures the container to run as an executable. It's often used in combination with CMD to provide default arguments.

# Syntax: VOLUME ["/data"]
VOLUME: Creates a mount point with the specified name and marks it as holding externally mounted volumes from native host or other containers.

# Syntax: USER <username | UID>[:<group | GID>]
USER: Sets the user or UID that the container should run as when executing commands.

# Syntax: WORKDIR /path/to/directory
WORKDIR: Sets the working directory for any RUN, CMD, ENTRYPOINT, COPY, and ADD instructions that follow it in the Dockerfile.

# Syntax: ARG <name>[=<default value>]
ARG: Defines a build-time variable that users can pass at build-time to the builder with the docker build command.

