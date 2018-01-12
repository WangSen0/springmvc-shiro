package com;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * 职责
 *
 * @author wangsen
 * @time 2017/12/30
 */
public class EncodingFilter implements Filter {
    private String basePath;
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String path = httpRequest.getContextPath();
        basePath = httpRequest.getScheme() + "://" + httpRequest.getServerName() + ":"
                + httpRequest.getServerPort() + path + "/";
        request.setAttribute("website",basePath);
        chain.doFilter(request, response);
    }

    public void destroy() {

    }
}
