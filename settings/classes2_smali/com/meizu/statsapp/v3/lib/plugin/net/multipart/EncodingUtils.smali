.class public final Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/EncodingUtils;
.super Ljava/lang/Object;
.source "EncodingUtils.java"


# direct methods
.method public static getAsciiBytes(Ljava/lang/String;)[B
    .registers 2

    if-eqz p0, :cond_11

    :try_start_2
    const-string v0, "US-ASCII"

    .line 131
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_8} :catch_9

    return-object p0

    .line 133
    :catch_9
    new-instance p0, Ljava/lang/Error;

    const-string v0, "HttpClient requires ASCII support"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
