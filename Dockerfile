FROM devcontainer AS base

# Install Jupyter
RUN pip3 install notebook jupyterlab

# Install additional Python libs
RUN pip3 install pandas numpy matplotlib

# Install openSAP repository
RUN git clone https://github.com/ceedee666/opensap_python_intro.git

# Start Jupyterlab
RUN jupyter-lab --ip 0.0.0.0 --no-browser

# Off we go - based on tmux, the terminal multiplexer
CMD ["tmux", "-u", "new", "-s", "main"]
