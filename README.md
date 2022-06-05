# bash-helpers
Bash helpers

**CTRL + L** - clear your screen.
**CTRL + D** - exit from terminal  
  
**CTRL + C** - прерывание процесса  
**CTRL + Z** - усыпляет процесс  
	*можно достать из сна с помощью fg (foreground)*
	
**CTRL + R** - search in terminal commands history  
	
	
`killall chromium` - помогает завершить процессы по имени.  
`pkill chro*` - помогает завершить процессы по части имени.  

`cd -` - возвращаетмся на предыдущий путь в командной строке.  

`sudo !!` - запускает последнюю команду с sudo.  

`history` - показывает список последних введенных команд.  `! {number}` - выполнит команду под номером.  
`HISTTIMEFORMAT="%Y-%m-%d %T "` - Add information about dates & times for used commands. Works only for opened session, if you close terminal, you will not see that. If you need that it works for every serssion, you need to add this command to `~/.bashrc`
