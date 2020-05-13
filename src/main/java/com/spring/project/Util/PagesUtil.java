package com.spring.project.Util;

import java.util.ArrayList;
import java.util.List;

public class PagesUtil {

    /**
     * 循环截取某页列表进行分页
     * @param dataList 分页数据
     * @param pageSize  页面大小
     * @param currentPage   当前页面
     */
    public static <T>List<T> page(List<T> dataList, int pageSize,int currentPage) {
        List<T> currentPageList = new ArrayList<T>();
        if (dataList != null && dataList.size() > 0) {
            int currIdx = (currentPage > 1 ? (currentPage - 1) * pageSize : 0);
            for (int i = 0; i < pageSize && i < dataList.size() - currIdx; i++) {
                T data = dataList.get(currIdx + i);
                currentPageList.add(data);
            }
        }
        return currentPageList;
    }
}
