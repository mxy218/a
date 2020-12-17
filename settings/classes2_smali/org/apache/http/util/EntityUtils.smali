.class public final Lorg/apache/http/util/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static toByteArray(Lorg/apache/http/HttpEntity;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_48

    .line 69
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    new-array p0, v1, [B

    return-object p0

    .line 73
    :cond_c
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gtz v2, :cond_40

    .line 76
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int p0, v2

    const/16 v2, 0x1000

    if-gez p0, :cond_21

    move p0, v2

    .line 80
    :cond_21
    new-instance v3, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v3, p0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    :try_start_26
    new-array p0, v2, [B

    .line 84
    :goto_28
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_33

    .line 85
    invoke-virtual {v3, p0, v1, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_3b

    goto :goto_28

    .line 88
    :cond_33
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 90
    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_3b
    move-exception p0

    .line 88
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0

    .line 74
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP entity too large to be buffered in memory"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP entity may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
