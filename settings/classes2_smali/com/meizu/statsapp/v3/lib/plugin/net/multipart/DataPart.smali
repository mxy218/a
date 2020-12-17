.class public Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/DataPart;
.super Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/PartBase;
.source "DataPart.java"


# static fields
.field private static final FILE_NAME_BYTES:[B


# instance fields
.field private filename:Ljava/lang/String;

.field private source:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "; filename="

    .line 29
    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/DataPart;->FILE_NAME_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 67
    invoke-direct/range {v0 .. v5}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/DataPart;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-nez p4, :cond_4

    const-string p4, "application/octet-stream"

    :cond_4
    if-nez p5, :cond_8

    const-string p5, "ISO-8859-1"

    :cond_8
    const-string v0, "binary"

    .line 47
    invoke-direct {p0, p1, p4, p5, v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_14

    .line 56
    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/DataPart;->filename:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/DataPart;->source:[B

    return-void

    .line 54
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected lengthOfData()J
    .registers 3

    .line 131
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/DataPart;->source:[B

    array-length p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/DataPart;->lengthOfData()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 111
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/DataPart;->source:[B

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 114
    :goto_16
    :try_start_16
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result p0

    if-ltz p0, :cond_21

    const/4 v2, 0x0

    .line 115
    invoke-virtual {p1, v0, v2, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_25

    goto :goto_16

    .line 119
    :cond_21
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    return-void

    :catchall_25
    move-exception p0

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    throw p0
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-super {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 85
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/DataPart;->filename:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 86
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/DataPart;->FILE_NAME_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 87
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 88
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/DataPart;->filename:Ljava/lang/String;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 89
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_1f
    return-void
.end method
