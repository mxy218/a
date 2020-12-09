.class public Lcom/android/server/uri/GrantUri;
.super Ljava/lang/Object;
.source "GrantUri.java"


# instance fields
.field public prefix:Z

.field public final sourceUserId:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Z)V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 34
    iput-object p2, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 35
    iput-boolean p3, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    .line 36
    return-void
.end method

.method public static resolve(ILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;
    .registers 4

    .line 78
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 79
    new-instance v0, Lcom/android/server/uri/GrantUri;

    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p0

    .line 80
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    .line 79
    return-object v0

    .line 82
    :cond_1b
    new-instance v0, Lcom/android/server/uri/GrantUri;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 49
    instance-of v0, p1, Lcom/android/server/uri/GrantUri;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 50
    check-cast p1, Lcom/android/server/uri/GrantUri;

    .line 51
    iget-object v0, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v2, p1, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v0, v2, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    iget-boolean p1, p1, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-ne v0, p1, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1

    .line 54
    :cond_1f
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 40
    nop

    .line 41
    iget v0, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 42
    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 43
    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v1, :cond_16

    const/16 v1, 0x4cf

    goto :goto_18

    :cond_16
    const/16 v1, 0x4d5

    :goto_18
    add-int/2addr v0, v1

    .line 44
    return v0
.end method

.method public toSafeString()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-boolean v1, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v1, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [prefix]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_36
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-boolean v1, p0, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v1, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [prefix]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_36
    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 71
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 72
    iget-object v0, p0, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 74
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 75
    return-void
.end method
