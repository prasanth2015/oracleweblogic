class weblogic::config{
  file {['/u01','/u01/app', '/u01/app/oracle',
        '/u01/app/oracle/product', '/u01/app/oracle/product/ofm12.1.2',
         '/u01/app/oracle/config', '/u01/app/oracle/config/domains',
          '/u01/app/oracle/config/applications'
  ]:
    ensure => 'directory',
    mode => '0777',
    owner => "oracle",
    group => "oinstall",
  }
  file {['/u01/oraInst.loc']:
    ensure => 'file',
    content => "inventory_loc=/u01/app/oraInventory\ninst_group=oinstall\n",
    mode => '0777',
    owner => "oracle",
    group => "oinstall",
  }
  
}