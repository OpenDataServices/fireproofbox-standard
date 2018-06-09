FROM python:3.5

RUN apt-get -qq -y update && apt-get -qq -y upgrade
RUN apt-get -qq -y install gettext python-sphinx build-essential

COPY requirements.txt /app/
WORKDIR /app
RUN pip install -r requirements.txt
RUN pip install git+https://github.com/rtfd/recommonmark.git@450909bdcf4c5eafde7c89696006530ba7cc78de#egg=recommonmark
RUN pip install git+https://github.com/OpenDataServices/sphinxcontrib-jsonschema.git@e39a92f4238bf022db11e4e88ba92fdaff2b31c9#egg=sphinxcontrib-jsonschema

CMD ["/bin/bash"]