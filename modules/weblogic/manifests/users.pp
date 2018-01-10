class weblogic::users{
  
exec{"group":
  command => "/usr/sbin/groupadd oinstall -g 1222",
}
exec{"user":
  command => "/usr/sbin/useradd oracle -u 1222 -g oinstall;echo sarasu10|passwd --stdin oracle",
}
}
