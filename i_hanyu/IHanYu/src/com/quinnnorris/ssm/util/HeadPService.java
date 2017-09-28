package com.quinnnorris.ssm.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;

/**
 * Title: HeadPService
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/27 下午2:03 星期三
 * @author: quinn_norris
 * @version: 1.0
 */
public class HeadPService {

    public static String insertHeadp(MultipartFile file) {
        String fileStr = "";
        if (!file.isEmpty()) {
            try {
                //String filePath = httpSession.getServletContext().getRealPath("/") + "headPortrait";
                String filePath = "/Users/quinn_norris/Desktop/GITHUB/IHanYu/i_hanyu/IHanYu/web/res/head";
                //String fileName = file.getOriginalFilename();
                String[] filetype = file.getContentType().split("/");
                String fileName = DateFormat.getStringBinTime() + "." + filetype[1];
                File targetFile = new File(filePath, fileName);
                fileStr = "../res/head/" + fileName;
                file.transferTo(targetFile);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return fileStr;
    }

}
