# Class: weblogic
#
# This module manages weblogic
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class weblogic {
include weblogic::users
include weblogic::config
include weblogic::install
}
