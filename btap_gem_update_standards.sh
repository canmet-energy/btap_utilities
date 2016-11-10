#!/bin/bash
cd /home/nrcan/btap_utilities \
&& git clone https://github.com/NREL/openstudio-standards.git \
&& cd openstudio-standards/openstudio-standards/ \
&& git checkout nrcan \
&& /home/nrcan/.rbenv/shims/bundle install \
&& /home/nrcan/.rbenv/shims/rake install \
&& cd /home/nrcan/btap_utilities \
&& rm -fr openstudio-standards
