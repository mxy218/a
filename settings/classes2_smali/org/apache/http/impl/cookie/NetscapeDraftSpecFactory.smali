.class public Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactory;
.super Ljava/lang/Object;
.source "NetscapeDraftSpecFactory.java"

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
    .registers 3

    if-eqz p1, :cond_10

    .line 54
    new-instance p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    const-string v0, "http.protocol.cookie-datepatterns"

    .line 55
    invoke-interface {p1, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    return-object p0

    .line 57
    :cond_10
    new-instance p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    invoke-direct {p0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;-><init>()V

    return-object p0
.end method
