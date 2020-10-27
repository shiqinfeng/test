package activeMq;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Time {

	public static void main(String[] args) {

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Calendar c = Calendar.getInstance();

		// ��ȥ����
		c.setTime(new Date());
		c.add(Calendar.DATE, -7);
		Date d = c.getTime();

		String day = format.format(d);

		System.out.println("��ȥ���죺" + day);

		// ��ȥһ��
		c.setTime(new Date());
		c.add(Calendar.MONTH, -1);
		Date m = c.getTime();
		String mon = format.format(m);
		System.out.println("��ȥһ���£�" + mon);

		// ��ȥ������
		c.setTime(new Date());
		c.add(Calendar.MONTH, -3);
		Date m3 = c.getTime();
		String mon3 = format.format(m3);
		System.out.println("��ȥ�����£�" + mon3);

		// ��ȥһ��
		c.setTime(new Date());
		c.add(Calendar.YEAR, -1);
		Date y =

				c.getTime();
		String year = format.format(y);

		System.out.println("��ȥһ�꣺" + year);
	}

}
