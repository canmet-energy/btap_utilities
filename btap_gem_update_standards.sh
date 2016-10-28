cd /home/nrcan/btap_utilities
git clone https://github.com/NREL/openstudio-standards.git \
&& cd openstudio-standards/openstudio-standards/ \
&& git checkout migrate_necb_loads_to_standards \
&& rake install
cd /home/nrcan
