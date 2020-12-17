.class public Lorg/apache/http/impl/client/DefaultHttpClient;
.super Lorg/apache/http/impl/client/AbstractHttpClient;
.source "DefaultHttpClient.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 3

    .line 128
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createAuthSchemeRegistry()Lorg/apache/http/auth/AuthSchemeRegistry;
    .registers 3

    .line 252
    new-instance p0, Lorg/apache/http/auth/AuthSchemeRegistry;

    invoke-direct {p0}, Lorg/apache/http/auth/AuthSchemeRegistry;-><init>()V

    .line 253
    new-instance v0, Lorg/apache/http/impl/auth/BasicSchemeFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/auth/BasicSchemeFactory;-><init>()V

    const-string v1, "Basic"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    .line 256
    new-instance v0, Lorg/apache/http/impl/auth/DigestSchemeFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/auth/DigestSchemeFactory;-><init>()V

    const-string v1, "Digest"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    return-object p0
.end method

.method protected createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 6

    .line 179
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 180
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    .line 181
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v2

    const-string v3, "http"

    const/16 v4, 0x50

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 180
    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 182
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    .line 183
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v2

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 182
    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 186
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.connection-manager.factory-object"

    .line 192
    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/conn/ClientConnectionManagerFactory;

    if-nez v2, :cond_75

    const-string v3, "http.connection-manager.factory-class-name"

    .line 194
    invoke-interface {v1, v3}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_75

    .line 198
    :try_start_3d
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/conn/ClientConnectionManagerFactory;
    :try_end_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3d .. :try_end_47} :catch_5e
    .catch Ljava/lang/IllegalAccessException; {:try_start_3d .. :try_end_47} :catch_53
    .catch Ljava/lang/InstantiationException; {:try_start_3d .. :try_end_47} :catch_48

    goto :goto_75

    :catch_48
    move-exception p0

    .line 205
    new-instance v0, Ljava/lang/InstantiationError;

    invoke-virtual {p0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_53
    move-exception p0

    .line 203
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :catch_5e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid class name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    :goto_75
    if-eqz v2, :cond_7c

    .line 211
    invoke-interface {v2, v1, v0}, Lorg/apache/http/conn/ClientConnectionManagerFactory;->newInstance(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p0

    goto :goto_86

    .line 213
    :cond_7c
    new-instance v1, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    move-object p0, v1

    :goto_86
    return-object p0
.end method

.method protected createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .registers 1

    .line 246
    new-instance p0, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    return-object p0
.end method

.method protected createConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;
    .registers 1

    .line 241
    new-instance p0, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {p0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-object p0
.end method

.method protected createCookieSpecRegistry()Lorg/apache/http/cookie/CookieSpecRegistry;
    .registers 3

    .line 265
    new-instance p0, Lorg/apache/http/cookie/CookieSpecRegistry;

    invoke-direct {p0}, Lorg/apache/http/cookie/CookieSpecRegistry;-><init>()V

    .line 266
    new-instance v0, Lorg/apache/http/impl/cookie/BestMatchSpecFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BestMatchSpecFactory;-><init>()V

    const-string v1, "best-match"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 269
    new-instance v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory;-><init>()V

    const-string v1, "compatibility"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 272
    new-instance v0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactory;-><init>()V

    const-string v1, "netscape"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 275
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2109SpecFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/RFC2109SpecFactory;-><init>()V

    const-string v1, "rfc2109"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 278
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2965SpecFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/RFC2965SpecFactory;-><init>()V

    const-string v1, "rfc2965"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    return-object p0
.end method

.method protected createCookieStore()Lorg/apache/http/client/CookieStore;
    .registers 1

    .line 332
    new-instance p0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {p0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    return-object p0
.end method

.method protected createCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;
    .registers 1

    .line 338
    new-instance p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;

    invoke-direct {p0}, Lorg/apache/http/impl/client/BasicCredentialsProvider;-><init>()V

    return-object p0
.end method

.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .registers 4

    .line 222
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 225
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v1

    const-string v2, "http.authscheme-registry"

    .line 223
    invoke-interface {v0, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v1

    const-string v2, "http.cookiespec-registry"

    .line 226
    invoke-interface {v0, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    const-string v2, "http.cookie-store"

    .line 229
    invoke-interface {v0, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object p0

    const-string v1, "http.auth.credentials-provider"

    .line 232
    invoke-interface {v0, v1, p0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createHttpParams()Lorg/apache/http/params/HttpParams;
    .registers 4

    .line 144
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 145
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v1, "ISO-8859-1"

    .line 147
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 156
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "org.apache.http.client"

    invoke-static {v1, p0}, Lorg/apache/http/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 163
    invoke-virtual {p0}, Lorg/apache/http/util/VersionInfo;->getRelease()Ljava/lang/String;

    move-result-object p0

    goto :goto_2a

    :cond_28
    const-string p0, "UNAVAILABLE"

    .line 164
    :goto_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apache-HttpClient/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (java 1.4)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .registers 2

    .line 287
    new-instance p0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {p0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 288
    new-instance v0, Lorg/apache/http/client/protocol/RequestDefaultHeaders;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/RequestDefaultHeaders;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 290
    new-instance v0, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 291
    new-instance v0, Lorg/apache/http/protocol/RequestTargetHost;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestTargetHost;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 293
    new-instance v0, Lorg/apache/http/protocol/RequestConnControl;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestConnControl;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 294
    new-instance v0, Lorg/apache/http/protocol/RequestUserAgent;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestUserAgent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 295
    new-instance v0, Lorg/apache/http/protocol/RequestExpectContinue;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestExpectContinue;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 297
    new-instance v0, Lorg/apache/http/client/protocol/RequestAddCookies;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 298
    new-instance v0, Lorg/apache/http/client/protocol/ResponseProcessCookies;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 300
    new-instance v0, Lorg/apache/http/client/protocol/RequestTargetAuthentication;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/RequestTargetAuthentication;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 301
    new-instance v0, Lorg/apache/http/client/protocol/RequestProxyAuthentication;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/RequestProxyAuthentication;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    return-object p0
.end method

.method protected createHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    .registers 1

    .line 308
    new-instance p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    return-object p0
.end method

.method protected createHttpRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .registers 3

    .line 346
    new-instance v0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V

    return-object v0
.end method

.method protected createProxyAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
    .registers 1

    .line 326
    new-instance p0, Lorg/apache/http/impl/client/DefaultProxyAuthenticationHandler;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultProxyAuthenticationHandler;-><init>()V

    return-object p0
.end method

.method protected createRedirectHandler()Lorg/apache/http/client/RedirectHandler;
    .registers 1

    .line 314
    new-instance p0, Lorg/apache/http/impl/client/DefaultRedirectHandler;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-object p0
.end method

.method protected createRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;
    .registers 1

    .line 173
    new-instance p0, Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-direct {p0}, Lorg/apache/http/protocol/HttpRequestExecutor;-><init>()V

    return-object p0
.end method

.method protected createTargetAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
    .registers 1

    .line 320
    new-instance p0, Lorg/apache/http/impl/client/DefaultTargetAuthenticationHandler;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultTargetAuthenticationHandler;-><init>()V

    return-object p0
.end method

.method protected createUserTokenHandler()Lorg/apache/http/client/UserTokenHandler;
    .registers 1

    .line 353
    new-instance p0, Lorg/apache/http/impl/client/DefaultUserTokenHandler;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultUserTokenHandler;-><init>()V

    return-object p0
.end method
