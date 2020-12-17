.class public Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultClientConnectionOperator.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionOperator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;


# instance fields
.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 94
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    return-void

    .line 91
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Scheme registry must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .registers 1

    .line 100
    new-instance p0, Lorg/apache/http/impl/conn/DefaultClientConnection;

    invoke-direct {p0}, Lorg/apache/http/impl/conn/DefaultClientConnection;-><init>()V

    return-object p0
.end method

.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p5

    if-eqz v2, :cond_10f

    if-eqz v3, :cond_107

    if-eqz v11, :cond_ff

    .line 126
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f7

    .line 131
    iget-object v0, v1, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v12

    .line 132
    invoke-virtual {v12}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v13

    .line 135
    instance-of v0, v13, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v0, :cond_2e

    .line 136
    sget-object v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    .line 137
    move-object v4, v13

    check-cast v4, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    move-object v14, v0

    move-object v15, v4

    goto :goto_31

    :cond_2e
    const/4 v4, 0x0

    move-object v15, v4

    move-object v14, v13

    .line 142
    :goto_31
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v10

    const/4 v0, 0x0

    move v9, v0

    .line 144
    :goto_3b
    array-length v0, v10

    if-ge v9, v0, :cond_f6

    .line 145
    invoke-interface {v14}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 146
    invoke-interface {v2, v0, v3}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    const/4 v8, 0x1

    .line 149
    :try_start_46
    aget-object v4, v10, v9
    :try_end_48
    .catch Ljava/net/SocketException; {:try_start_46 .. :try_end_48} :catch_c9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_46 .. :try_end_48} :catch_b8

    .line 150
    :try_start_48
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 151
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-virtual {v12, v4}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v7
    :try_end_54
    .catch Ljava/net/SocketException; {:try_start_48 .. :try_end_54} :catch_af
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_48 .. :try_end_54} :catch_b8

    const/16 v16, 0x0

    move-object v4, v14

    move-object v5, v0

    move-object/from16 v17, v14

    move v14, v8

    move-object/from16 v8, p3

    move/from16 v18, v9

    move/from16 v9, v16

    move-object/from16 v19, v10

    move-object/from16 v10, p5

    .line 149
    :try_start_65
    invoke-interface/range {v4 .. v10}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v4

    if-eq v0, v4, :cond_6f

    .line 155
    invoke-interface {v2, v4, v3}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V
    :try_end_6e
    .catch Ljava/net/SocketException; {:try_start_65 .. :try_end_6e} :catch_a7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_65 .. :try_end_6e} :catch_a1

    move-object v0, v4

    :cond_6f
    move-object/from16 v4, p4

    .line 168
    :try_start_71
    invoke-virtual {v1, v0, v4, v11}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    if-eqz v15, :cond_94

    .line 171
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-virtual {v12, v6}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v6

    .line 170
    invoke-interface {v15, v0, v5, v6, v14}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v5

    if-eq v5, v0, :cond_8b

    .line 175
    invoke-interface {v2, v5, v3}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 177
    :cond_8b
    invoke-interface {v13, v5}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    invoke-interface {v2, v0, v11}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V

    goto/16 :goto_f6

    .line 179
    :cond_94
    invoke-interface {v13, v0}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    invoke-interface {v2, v0, v11}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V
    :try_end_9b
    .catch Ljava/net/SocketException; {:try_start_71 .. :try_end_9b} :catch_9f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_71 .. :try_end_9b} :catch_9d

    goto/16 :goto_f6

    :catch_9d
    move-exception v0

    goto :goto_a4

    :catch_9f
    move-exception v0

    goto :goto_aa

    :catch_a1
    move-exception v0

    move-object/from16 v4, p4

    :goto_a4
    move-object/from16 v5, v19

    goto :goto_c1

    :catch_a7
    move-exception v0

    move-object/from16 v4, p4

    :goto_aa
    move/from16 v7, v18

    move-object/from16 v5, v19

    goto :goto_d1

    :catch_af
    move-exception v0

    move-object/from16 v4, p4

    move-object/from16 v17, v14

    move v14, v8

    move v7, v9

    move-object v5, v10

    goto :goto_d1

    :catch_b8
    move-exception v0

    move-object/from16 v4, p4

    move/from16 v18, v9

    move-object/from16 v17, v14

    move v14, v8

    move-object v5, v10

    .line 197
    :goto_c1
    array-length v6, v5

    sub-int/2addr v6, v14

    move/from16 v7, v18

    if-eq v7, v6, :cond_c8

    goto :goto_ef

    .line 198
    :cond_c8
    throw v0

    :catch_c9
    move-exception v0

    move-object/from16 v4, p4

    move v7, v9

    move-object v5, v10

    move-object/from16 v17, v14

    move v14, v8

    .line 185
    :goto_d1
    array-length v6, v5

    sub-int/2addr v6, v14

    if-ne v7, v6, :cond_ef

    .line 187
    instance-of v1, v0, Ljava/net/ConnectException;

    if-eqz v1, :cond_dc

    .line 188
    check-cast v0, Ljava/net/ConnectException;

    goto :goto_e9

    .line 190
    :cond_dc
    new-instance v1, Ljava/net/ConnectException;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object v0, v1

    .line 193
    :goto_e9
    new-instance v1, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v1, v3, v0}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v1

    :cond_ef
    :goto_ef
    add-int/lit8 v9, v7, 0x1

    move-object v10, v5

    move-object/from16 v14, v17

    goto/16 :goto_3b

    :cond_f6
    :goto_f6
    return-void

    .line 127
    :cond_f7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection must not be open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_ff
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_10f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getTcpNoDelay(Lorg/apache/http/params/HttpParams;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 270
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 272
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getLinger(Lorg/apache/http/params/HttpParams;)I

    move-result p0

    if-ltz p0, :cond_1c

    if-lez p0, :cond_18

    const/4 p2, 0x1

    goto :goto_19

    :cond_18
    const/4 p2, 0x0

    .line 274
    :goto_19
    invoke-virtual {p1, p2, p0}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_1c
    return-void
.end method

.method public updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_83

    if-eqz p2, :cond_7b

    if-eqz p4, :cond_73

    .line 226
    invoke-interface {p1}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 231
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v1, :cond_4b

    .line 238
    invoke-virtual {v0}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .line 242
    :try_start_24
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0
    :try_end_39
    .catch Ljava/net/ConnectException; {:try_start_24 .. :try_end_39} :catch_44

    .line 246
    invoke-virtual {p0, v0, p3, p4}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 247
    invoke-interface {v1, v0}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result p0

    invoke-interface {p1, v0, p2, p0, p4}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    return-void

    :catch_44
    move-exception p0

    .line 244
    new-instance p1, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {p1, p2, p0}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw p1

    .line 233
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Target scheme ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Lorg/apache/http/conn/scheme/Scheme;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") must have layered socket factory."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 227
    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Connection must be open."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 223
    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameters must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 218
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Target host must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 214
    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Connection must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
