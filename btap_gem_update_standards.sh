#!/bin/bash
cd ~/btap_utilities \
&& git clone https://github.com/NREL/openstudio-standards.git \
&& cd openstudio-standards/openstudio-standards/ \
&& git checkout nrcan \
&& bundle install \
&& bundle exec rake install \
&& cd ~/btap_utilities \
&& rm -fr openstudio-standards
