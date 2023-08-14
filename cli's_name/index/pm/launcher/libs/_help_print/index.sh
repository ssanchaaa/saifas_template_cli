#!/bin/bash

# /launcher/libs/sfauto/_help_print/index.sh

function _help_print()
{
    echo -e "
     Usage: sfauto [Options] Parameters

     sfauto
     Universal tool for automation of scripts by ssanchaaa

     Options:
\t-h, --help\t\t\t\tPrint this help message and exit
\t-v, --version\t\t\t\tPrint version and last changes
\t-i, --init-project\t\t\tInitialize a new target project for further work with it (need for first start of target project)
\t-l, --list-projects\t\t\tPrint list of already initialized projects

     Parameters:
\tstart NAME-PROJECT REQUIRED\t\t\tstart the \"NAME-PROJECT\" project
\tstop NAME-PROJECT REQUIRED\t\t\tstop the \"NAME-PROJECT\" project
\trestart NAME-PROJECT REQUIRED\t\t\trestart the \"NAME-PROJECT\' project
\tdelete NAME-PROJECT REQUIRED\t\t\tdelete the \"NAME-PROJECT\" project (only PM2, only working services)
\tls\t\t\t\t\t\tlist all processes

     "
}
