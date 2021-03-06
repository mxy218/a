.class public Lorg/apache/http/impl/io/SocketInputBuffer;
.super Lorg/apache/http/impl/io/AbstractSessionInputBuffer;
.source "SocketInputBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;-><init>()V

    if-eqz p1, :cond_11

    .line 69
    iput-object p1, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    .line 75
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const/16 p2, 0x2000

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->init(Ljava/io/InputStream;ILorg/apache/http/params/HttpParams;)V

    return-void

    .line 67
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Socket may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public isDataAvailable(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 82
    iget-object v1, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    .line 84
    :try_start_c
    iget-object v2, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v2, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 85
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    .line 86
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v0
    :try_end_18
    .catch Ljava/io/InterruptedIOException; {:try_start_c .. :try_end_18} :catch_20
    .catchall {:try_start_c .. :try_end_18} :catchall_1e

    .line 92
    :goto_18
    iget-object p0, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {p0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_2d

    :catchall_1e
    move-exception p1

    goto :goto_27

    :catch_20
    move-exception p1

    .line 88
    :try_start_21
    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_26

    goto :goto_18

    .line 89
    :cond_26
    throw p1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_1e

    .line 92
    :goto_27
    iget-object p0, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {p0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw p1

    :cond_2d
    :goto_2d
    return v0
.end method

.method public isStale()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 109
    :cond_8
    iget-object v0, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    const/4 v2, 0x1

    .line 111
    :try_start_f
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 112
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v3
    :try_end_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_18} :catch_1c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_29
    .catchall {:try_start_f .. :try_end_18} :catchall_22

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1c

    move v1, v2

    .line 118
    :catch_1c
    :cond_1c
    iget-object p0, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :catchall_22
    move-exception v1

    iget-object p0, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v1

    :catch_29
    iget-object p0, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2
.end method
