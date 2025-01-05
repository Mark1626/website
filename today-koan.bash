#!/usr/bin/env bash
# Author - Nimalan ~mark1626
# Inspired by
# https://github.com/naknomum/a-raw-koan/tree/master

today_koan() {
    echo "<div style='display: flex; align-items: center; height: 100vh; width: 100vw; background-color: black;'>"
    echo "   <span style='display: block; margin: auto; color: white; font-size: 10vw; font-family: Arial, Helvetica, sans-serif;'>"
    echo "$(date '+%Y-%m-%d')"
    echo "   </span>"
    echo "</div>"
}

today_koan > ~/public_html/today-koan.html

