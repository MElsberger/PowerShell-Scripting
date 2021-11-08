Set-NetFirewallProfile -All -Enabled True

Set-NetFirewallProfile -DefaultInboundAction Allow -DefaultOutboundAction Block -NotifyOnListen true -LogFileName %systemroot%\system32\LogFiles\Firewall\pfirewall.log
