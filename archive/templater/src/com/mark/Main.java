package com.mark;

import freemarker.template.*;
import java.util.*;
import java.io.*;

public class Main {
  public static void main(String[] args) throws Exception {
    Configuration cfg = new Configuration(Configuration.VERSION_2_3_30);
    cfg.setDirectoryForTemplateLoading(new File("templates"));
    cfg.setDefaultEncoding("UTF-8");
    cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
    cfg.setLogTemplateExceptions(false);
    cfg.setWrapUncheckedExceptions(true);
    cfg.setFallbackOnNullLoopVariable(false);

    Map root = new HashMap();
    root.put("quote", "Know Thyself");
    Map article = new HashMap();
    article.put("theme", "green");
    article.put("title", "Title");
    article.put("content", "Content 1");
    root.put("article", article);

    Template temp = cfg.getTemplate("page_skeleton.ftl");
    Writer out = new OutputStreamWriter(System.out);
    temp.process(root, out);
  }
}