.class public Lorg/apache/http/protocol/RequestConnControl;
.super Ljava/lang/Object;
.source "RequestConnControl.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_10

    const-string p0, "Connection"

    .line 65
    invoke-interface {p1, p0}, Lorg/apache/http/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_f

    const-string p2, "Keep-Alive"

    .line 68
    invoke-interface {p1, p0, p2}, Lorg/apache/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void

    .line 63
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HTTP request may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
