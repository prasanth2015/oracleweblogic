class weblogic::install{
  exec {"installation":
    command =>"/usr/bin/scp -r es001048:/home/bandaru/Documents/Prasanth/weblogic/fmw_12.2.1.2.0_wls.jar /usr/local/",
}
exec {"installation":
  command =>"/usr/bin/scp -r /home/bandaru/Documents/Prasanth/weblogic/weblogic_silent.rsp /usr/local/",
}
exec {"installation":
  command =>"/usr/bin/scp -r /home/bandaru/Documents/Prasanth/java /usr/local/",
}
exec {"installation":
    command => "/usr/local/java/bin/java -jar /usr/local/fmw_12.2.1.2.0_wls.jar -silent -responseFile /usr/local/weblogic_silent.rsp -invPtrLoc /u01/oraInst.loc",
    user => oracle,
    group => oinstall,
    timeout => 2000,
  }
  
}