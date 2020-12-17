.class public abstract Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field public static final BOUNDARY_BYTES:[B

.field protected static final CHARSET_BYTES:[B

.field protected static final CONTENT_DISPOSITION_BYTES:[B

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B

.field protected static final CONTENT_TYPE_BYTES:[B

.field protected static final CRLF_BYTES:[B

.field private static final DEFAULT_BOUNDARY_BYTES:[B

.field protected static final EXTRA_BYTES:[B

.field protected static final QUOTE_BYTES:[B


# instance fields
.field private boundaryBytes:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "----------------314159265358979323846"

    .line 63
    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->BOUNDARY_BYTES:[B

    .line 69
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->BOUNDARY_BYTES:[B

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    const-string v0, "\r\n"

    .line 75
    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->CRLF_BYTES:[B

    const-string v0, "\""

    .line 82
    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->QUOTE_BYTES:[B

    const-string v0, "--"

    .line 89
    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->EXTRA_BYTES:[B

    const-string v0, "Content-Disposition: form-data; name="

    .line 96
    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    const-string v0, "Content-Type: "

    .line 103
    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->CONTENT_TYPE_BYTES:[B

    const-string v0, "; charset="

    .line 110
    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->CHARSET_BYTES:[B

    const-string v0, "Content-Transfer-Encoding: "

    .line 117
    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_33

    if-eqz p2, :cond_2b

    .line 367
    array-length v0, p2

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    .line 370
    :goto_8
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 372
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->setPartBoundary([B)V

    .line 373
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->send(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 375
    :cond_18
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 376
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 377
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 378
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 368
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "partBoundary may not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 365
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parts may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getCharSet()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getPartBoundary()[B
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->boundaryBytes:[B

    if-nez p0, :cond_6

    .line 167
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    :cond_6
    return-object p0
.end method

.method public abstract getTransferEncoding()Ljava/lang/String;
.end method

.method public send(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 297
    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 298
    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 299
    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 300
    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->sendData(Ljava/io/OutputStream;)V

    .line 302
    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected sendContentTypeHeader(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 226
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 227
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->CONTENT_TYPE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 228
    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 229
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->getCharSet()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 231
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->CHARSET_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 232
    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_29
    return-void
.end method

.method protected abstract sendData(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 213
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 214
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 215
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected sendEnd(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected sendEndOfHeader(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 260
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected sendStart(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 201
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->getPartBoundary()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 202
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected sendTransferEncodingHeader(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->getTransferEncoding()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 247
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 248
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 249
    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_17
    return-void
.end method

.method setPartBoundary([B)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->boundaryBytes:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 335
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
