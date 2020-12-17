.class public Lorg/apache/http/impl/cookie/BestMatchSpecFactory;
.super Ljava/lang/Object;
.source "BestMatchSpecFactory.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .registers 5

    if-eqz p1, :cond_17

    .line 54
    new-instance p0, Lorg/apache/http/impl/cookie/BestMatchSpec;

    const-string v0, "http.protocol.cookie-datepatterns"

    .line 55
    invoke-interface {p1, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http.protocol.single-cookie-header"

    .line 56
    invoke-interface {p1, v2, v1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    return-object p0

    .line 58
    :cond_17
    new-instance p0, Lorg/apache/http/impl/cookie/BestMatchSpec;

    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpec;-><init>()V

    return-object p0
.end method
