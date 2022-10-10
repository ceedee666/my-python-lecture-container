FROM devcontainer AS base

# Install Jupyter
RUN pip3 install notebook jupyterlab
ENV PATH "$PATH:/home/user/.local/bin"

# Install additional Python libs
RUN pip3 install beautifulsoup4 black matplotlib numpy pandas pylint requests

# Install openSAP repository
RUN git clone https://github.com/ceedee666/opensap_python_intro.git

# Start Jupyterlab
CMD ["jupyter-lab", "--ip", "0.0.0.0", "--no-browser"]
