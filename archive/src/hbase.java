
//package hbaseExec2;

/*
 * ����һ��students��,��������ز���
 */
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.HBaseConfiguration;
import org.apache.hadoop.hbase.HColumnDescriptor;
import org.apache.hadoop.hbase.HTableDescriptor;
import org.apache.hadoop.hbase.KeyValue;
import org.apache.hadoop.hbase.client.Delete;
import org.apache.hadoop.hbase.client.Get;
import org.apache.hadoop.hbase.client.HBaseAdmin;
import org.apache.hadoop.hbase.client.HTable;
import org.apache.hadoop.hbase.client.Put;
import org.apache.hadoop.hbase.client.Result;
import org.apache.hadoop.hbase.client.ResultScanner;
import org.apache.hadoop.hbase.client.Scan;
import org.apache.hadoop.hbase.util.Bytes;

public class hbase {
	// ������̬����
	private static Configuration conf = null;

	static {
		conf = HBaseConfiguration.create();
//		conf.set("hbase.master", "hdfs://master:60000");
		conf.set("hbase.zookeeper.quorum", "192.168.8.128");
	//	conf.set("hbase.zookeeper.quorum", "10.215.118.18");
//		conf.set("hbase.zookeeper.quorum", "ubuntu");
		conf.set("hbase.zookeeper.property.clientPort", "2181");
		//conf.set("hbase.zookeeper.property.clientPort", "9000");
	}

	//�жϱ��Ƿ����
	private static boolean isExist(String tableName) throws IOException {
		HBaseAdmin hAdmin = new HBaseAdmin(conf);
		return hAdmin.tableExists(tableName);
	}

	// �������ݿ��
	public static void createTable(String tableName, String[] columnFamilys)
			throws Exception {
		// �½�һ�����ݿ����Ա
		HBaseAdmin hAdmin = new HBaseAdmin(conf);
//		System.out.println(hAdmin.tableExists(tableName));
		if (hAdmin.tableExists(tableName)) {
			System.out.println("�� "+tableName+" �Ѵ��ڣ�");
			System.exit(0);
		} else {
		hAdmin.tableExists(tableName);
			// �½�һ��students�������
			HTableDescriptor tableDesc = new HTableDescriptor(tableName);
			// ���������������
			for (String columnFamily : columnFamilys) {
				tableDesc.addFamily(new HColumnDescriptor(columnFamily));
			}
			// �������úõ���������
			hAdmin.createTable(tableDesc);
			System.out.println("������ "+tableName+" �ɹ�!");
		}
	}

	// ɾ�����ݿ��
	public static void deleteTable(String tableName) throws Exception {
		// �½�һ�����ݿ����Ա
		HBaseAdmin hAdmin = new HBaseAdmin(conf);
		if (hAdmin.tableExists(tableName)) {
			// �ر�һ����
			hAdmin.disableTable(tableName);
			hAdmin.deleteTable(tableName);
			System.out.println("ɾ���� "+tableName+" �ɹ���");
		} else {
			System.out.println("ɾ���ı� "+tableName+" �����ڣ�");
			System.exit(0);
		}
	}

	// ���һ������
	public static void addRow(String tableName, String row,
			String columnFamily, String column, String value) throws Exception {
		HTable table = new HTable(conf, tableName);
		Put put = new Put(Bytes.toBytes(row));// ָ����
		// �����ֱ�:���塢�С�ֵ
		put.add(Bytes.toBytes(columnFamily), Bytes.toBytes(column),
				Bytes.toBytes(value));
		table.put(put);
	}

	// ɾ��һ��(��)����
	public static void delRow(String tableName, String row) throws Exception {
		HTable table = new HTable(conf, tableName);
		Delete del = new Delete(Bytes.toBytes(row));
		table.delete(del);
	}

	// ɾ����������
	public static void delMultiRows(String tableName, String[] rows)
			throws Exception {
		HTable table = new HTable(conf, tableName);
		List<Delete> delList = new ArrayList<Delete>();
		for (String row : rows) {
			Delete del = new Delete(Bytes.toBytes(row));
			delList.add(del);
		}
		table.delete(delList);
	}

	// ��ȡһ������
	public static void getRow(String tableName, String row) throws Exception {
		HTable table = new HTable(conf, tableName);
		Get get = new Get(Bytes.toBytes(row));
		Result result = table.get(get);
		// ������,raw������������keyvalue����
		for (KeyValue rowKV : result.raw()) {
			System.out.print("����:" + new String(rowKV.getRow()) + " ");
			System.out.print("ʱ���:" + rowKV.getTimestamp() + " ");
			System.out.print("������:" + new String(rowKV.getFamily()) + " ");
			System.out.print("����:" + new String(rowKV.getQualifier()) + " ");
			System.out.println("ֵ:" + new String(rowKV.getValue()));
		}
	}

	// ��ȡ��������
	public static void getAllRows(String tableName) throws Exception {
		HTable table = new HTable(conf, tableName);
		Scan scan = new Scan();
		ResultScanner results = table.getScanner(scan);
		// ������
		for (Result result : results) {
			for (KeyValue rowKV : result.raw()) {
				System.out.print("����:" + new String(rowKV.getRow()) + " ");
				System.out.print("ʱ���:" + rowKV.getTimestamp() + " ");
				System.out.print("������:" + new String(rowKV.getFamily()) + " ");
				System.out
						.print("����:" + new String(rowKV.getQualifier()) + " ");
				System.out.println("ֵ:" + new String(rowKV.getValue()));
			}
		}
	}

	// ������
	public static void main(String[] args) {
		try {
			String tableName = "student";
			// ��һ�����������ݿ����student��
			String[] columnFamilys = { "info", "course" };
			hbase.createTable(tableName, columnFamilys);
			// �ڶ����������ݱ���������
			// ��ӵ�һ������
			if (isExist(tableName)) {
				hbase.addRow(tableName, "zpc", "info", "age", "20");
				hbase.addRow(tableName, "zpc", "info", "sex", "boy");
				hbase.addRow(tableName, "zpc", "course", "china", "97");
				hbase.addRow(tableName, "zpc", "course", "math", "128");
				hbase.addRow(tableName, "zpc", "course", "english", "85");
				// ��ӵڶ�������
				hbase.addRow(tableName, "henjun", "info", "age", "19");
				hbase.addRow(tableName, "henjun", "info", "sex", "boy");
				hbase.addRow(tableName, "henjun", "course", "china","90");
				hbase.addRow(tableName, "henjun", "course", "math","120");
				hbase.addRow(tableName, "henjun", "course", "english","90");
				// ��ӵ���������
				hbase.addRow(tableName, "niaopeng", "info", "age", "18");
				hbase.addRow(tableName, "niaopeng", "info", "sex","girl");
				hbase.addRow(tableName, "niaopeng", "course", "china","100");
				hbase.addRow(tableName, "niaopeng", "course", "math","100");
				hbase.addRow(tableName, "niaopeng", "course", "english","99");
				// ����������ȡһ������
				System.out.println("**************��ȡһ��(zpc)����*************");
				hbase.getRow(tableName, "zpc");
				// ���Ĳ�����ȡ��������
				System.out.println("**************��ȡ��������***************");
				hbase.getAllRows(tableName);

				// ���岽��ɾ��һ������
				System.out.println("************ɾ��һ��(zpc)����************");
				hbase.delRow(tableName, "zpc");
				hbase.getAllRows(tableName);
				// ��������ɾ����������
				System.out.println("**************ɾ����������***************");
				String rows[] = new String[] { "qingqing","xiaoxue" };
				hbase.delMultiRows(tableName, rows);
				hbase.getAllRows(tableName);
				// ���߲���ɾ�����ݿ�
				System.out.println("***************ɾ�����ݿ��**************");
				hbase.deleteTable(tableName);
				System.out.println("��"+tableName+"������"+isExist(tableName));
			} else {
				System.out.println(tableName + "�����ݿ�����ڣ�");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}