.class public Lcom/alibaba/fastjson/support/spring/FastjsonSockJsMessageCodec;
.super Lorg/springframework/web/socket/sockjs/frame/AbstractSockJsMessageCodec;
.source "FastjsonSockJsMessageCodec.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lorg/springframework/web/socket/sockjs/frame/AbstractSockJsMessageCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyJsonQuoting(Ljava/lang/String;)[C
    .registers 3

    .line 26
    new-instance p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 28
    :try_start_5
    new-instance v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 29
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toCharArrayForSpringWebSocket()[C

    move-result-object p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-object p1

    :catchall_15
    move-exception p1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw p1
.end method

.method public decode(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    const-class p0, [Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public decodeInputStream(Ljava/io/InputStream;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    const-class p0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
