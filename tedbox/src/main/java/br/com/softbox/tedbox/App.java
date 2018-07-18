package br.com.softbox.tedbox;

import java.util.Random;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class App {
	private static final Logger logger = LogManager.getLogger("App");
	
	private static final int INFO  = 1;
	private static final int ERROR = 2;
	private static final int DEBUG = 3;
	 
	public static void main(String[] args) throws Exception {
		Random randon = new Random();
		
		while (true) {
			int type = randon.nextInt(3) + 1;
			
			String msg = "Log Valor=" + randon.nextInt(100);
			
			switch (type) {
			case INFO:
				logger.info(msg);
				break;
			case ERROR:
				logger.error(msg);
				break;
			case DEBUG:
				logger.debug(msg);
				break;
			}
			
			Thread.sleep(2000);
		}
	}
}
