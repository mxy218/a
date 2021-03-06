.class public abstract Lcom/android/volley/toolbox/BaseHttpStack;
.super Ljava/lang/Object;
.source "BaseHttpStack.java"

# interfaces
.implements Lcom/android/volley/toolbox/HttpStack;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract executeRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/volley/toolbox/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation
.end method

.method public final performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/android/volley/toolbox/BaseHttpStack;->executeRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/HttpResponse;

    move-result-object p0

    .line 70
    new-instance p1, Lorg/apache/http/ProtocolVersion;

    const/4 p2, 0x1

    const-string v0, "HTTP"

    invoke-direct {p1, v0, p2, p2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 71
    new-instance p2, Lorg/apache/http/message/BasicStatusLine;

    .line 73
    invoke-virtual {p0}, Lcom/android/volley/toolbox/HttpResponse;->getStatusCode()I

    move-result v0

    const-string v1, ""

    invoke-direct {p2, p1, v0, v1}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 74
    new-instance p1, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {p1, p2}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 76
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {p0}, Lcom/android/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/Header;

    .line 78
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {v1}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/volley/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_46
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/http/Header;

    .line 80
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/apache/http/Header;

    invoke-virtual {p1, p2}, Lorg/apache/http/message/AbstractHttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_6b

    .line 84
    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 85
    invoke-virtual {v0, p2}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/volley/toolbox/HttpResponse;->getContentLength()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 87
    invoke-virtual {p1, v0}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_6b
    return-object p1
.end method
