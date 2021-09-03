package com.company.lottomon.common;

import org.jsoup.Jsoup;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import org.jsoup.select.Elements;

import java.io.IOException;

public class HtmlCrawling {

    public Object getHtml(String address) throws IOException {
        Document doc = Jsoup.connect(address).header("User-Agent", "Chrome/19.0.1.84.52").get();

        //System.out.println(doc);

        return doc;
    }

}
