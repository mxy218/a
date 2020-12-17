.class public abstract Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/PartBase;
.super Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;
.source "PartBase.java"


# instance fields
.field private charSet:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 61
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/Part;-><init>()V

    if-eqz p1, :cond_e

    .line 66
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/PartBase;->name:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/PartBase;->contentType:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/PartBase;->charSet:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    return-void

    .line 64
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Name must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCharSet()Ljava/lang/String;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/PartBase;->charSet:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/PartBase;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/PartBase;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    return-object p0
.end method
