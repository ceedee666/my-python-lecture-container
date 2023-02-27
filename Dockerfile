FROM my-dev-image AS base

# Create and active a virtual environment
RUN python3 -m venv /home/user/venv
ENV PATH="/home/user/venv/bin:$PATH"

# Install Jupyter
RUN pip3 install notebook jupyterlab
#ENV PATH "$PATH:/home/user/.local/bin"

# Install additional Python libs
RUN pip3 install beautifulsoup4 black matplotlib numpy pandas pylint requests

# Install openSAP repository
RUN git clone https://github.com/ceedee666/opensap_python_intro.git

# Start Jupyterlab
CMD ["jupyter-lab", "--ip", "0.0.0.0", "--no-browser"]
