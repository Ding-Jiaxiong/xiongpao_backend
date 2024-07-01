package com.dingjiaxiong.xiongpao_backend.once.importuser;

import com.alibaba.excel.EasyExcel;

import java.util.List;

/**
 * 导入Excel
 *
 * @author Ding Jiaxiong
 */

public class ImportExcel {

    /**
     * 读取数据
     */
    public static void main(String[] args) {

        String fileName = "D:\\PlanetProjects\\2_partner_matching\\xiongpao_backend\\src\\main\\resources\\testExcel.xlsx";

        synchronousRead(fileName);
    }

    /**
     * 监听器读取
     *
     * @param fileName
     */
    public static void readByListener(String fileName) {
        EasyExcel.read(fileName, XingQiuTableUserInfo.class, new TableListener()).sheet().doRead();
    }

    /**
     * 同步读
     *
     * @param fileName
     */
    public static void synchronousRead(String fileName) {
        // 这里 需要指定读用哪个class去读，然后读取第一个sheet 同步读取会自动finish
        List<XingQiuTableUserInfo> totalDataList =
                EasyExcel.read(fileName).head(XingQiuTableUserInfo.class).sheet().doReadSync();
        for (XingQiuTableUserInfo xingQiuTableUserInfo : totalDataList) {
            System.out.println(xingQiuTableUserInfo);
        }
    }

}
