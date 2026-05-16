import requests
from urllib.parse import quote_plus

def optimized_image_url(user_submitted_url):
    def weserv_template(url):
        return f"https://images.weserv.nl/?url={url}&w=300&fit=cover"
    try:
        headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
            "Accept-Language": "en-US,en;q=0.5"
        }
        response = requests.head(user_submitted_url, headers=headers, allow_redirects=True, timeout=5)
        # check original
        if response.status_code != 200:
            return user_submitted_url
        # and the derived (sites may block even weserv)
        if requests.head(weserv_template(response.url), headers=headers, allow_redirects=True, timeout=5).status_code != 200:
            return user_submitted_url
        
        real_url = response.url
        # URL-encode the real URL so characters like '?' or '&' don't break weserv
        encoded_url = quote_plus(real_url)
        return weserv_template(encoded_url)
        
    except requests.RequestException:
        # Fallback to a placeholder if the link is completely dead
        return "/graphics/placeholder.png"
    
# https://images.pexels.com/photos/13369505/pexels-photo-13369505.jpeg
# headers = {
#     "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
#     "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
#     "Accept-Language": "en-US,en;q=0.5"
# }
# a =requests.get('https://shorturl.at/ORkbJ', headers=headers, allow_redirects=True, timeout=5)
# print(a.url, a.status_code)
print(optimized_image_url("https://shorturl.at/ORkbJ"))