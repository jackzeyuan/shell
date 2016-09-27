function FindProxyForURL(url, host) {
 
    
    if (dnsDomainIs(host, ".google.com")) return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".google.com.hk")) return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".chrome.com")) return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".youtube.com")) return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".wsjemail.com")) return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".wsj.com")) return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".epochtimes.com")) return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".thepiratebay.se")) return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".twitter.com")) return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".porn.com")) return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".chinainperspective.com")) return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".wenxuecity.com")) return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".thepiratebay.org")) return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".googleapis.com")) return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".google-analytics.com")) return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".mingjingnews.com")) return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".facebook.com") && url.substring(0, 6) == "https:") return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, "twitter.com") && url.substring(0, 6) == "https:") return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, "twing.com") && url.substring(0, 6) == "https:") return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".fbcdn.net") && url.substring(0, 6) == "https:") return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".googlecode.com") && url.substring(0, 6) == "https:") return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".youtube.com") && url.substring(0, 6) == "https:") return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".ytimg.com") && url.substring(0, 6) == "https:") return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".snapchat.com") && url.substring(0, 6) == "https:") return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".instagram.com") && url.substring(0, 6) == "https:") return "SOCKS5 127.0.0.1:1080"; 
    if (dnsDomainIs(host, ".doubleclick.net") && url.substring(0, 6) == "https:") return "SOCKS5 127.0.0.1:1088"; 

    if (dnsDomainIs(host, ".alphabaymarket.com")) return "SOCKS5 127.0.0.1:1080";
    if (dnsDomainIs(host, ".torproject.org")) return "SOCKS5 127.0.0.1:1080";
    if (dnsDomainIs(host, ".youtube.com")) return "SOCKS5 127.0.0.1:1080";
    if (dnsDomainIs(host, ".arrahmah.com")) return "SOCKS5 127.0.0.1:1080";

    //return "SOCKS5 127.0.0.1:1080"
    return "DIRECT";
 
 
}
