package mit.arch.service;

import java.io.ByteArrayOutputStream;

import org.apache.commons.exec.CommandLine;
import org.apache.commons.exec.DefaultExecutor;
import org.apache.commons.exec.PumpStreamHandler;
import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class TestService {
	
	@Test
	public void testJava() {
		String[] command = new String[2];
		command[0] = "C:/Users/MIT/AppData/Local/Programs/Python/Python38/python.exe";
		command[1] = "C:/pythonProject/aa/bb.py";
		
		try {
            execPython(command);
        } catch (Exception e) {
            e.printStackTrace();
        }
	}

	private void execPython(String[] command) throws Exception {
		CommandLine commandLine = CommandLine.parse(command[0]);
        for (int i = 1, n = command.length; i < n; i++) {
            commandLine.addArgument(command[i]);
        }

        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        PumpStreamHandler pumpStreamHandler = new PumpStreamHandler(outputStream);
        DefaultExecutor executor = new DefaultExecutor();
        executor.setStreamHandler(pumpStreamHandler);
        int result=executor.execute(commandLine);
        System.out.println("result: " + result);
        System.out.println("output: " + outputStream.toString("euc-kr"));
	}

}
