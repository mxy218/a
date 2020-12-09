.class Lcom/android/server/security/VerityUtils$TrackedBufferFactory;
.super Ljava/lang/Object;
.source "VerityUtils.java"

# interfaces
.implements Landroid/util/apk/ByteBufferFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/VerityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackedBufferFactory"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/security/VerityUtils$1;)V
    .registers 2

    .line 406
    invoke-direct {p0}, Lcom/android/server/security/VerityUtils$TrackedBufferFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Ljava/nio/ByteBuffer;
    .registers 3

    .line 411
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_d

    .line 414
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/VerityUtils$TrackedBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    .line 415
    iget-object p1, p0, Lcom/android/server/security/VerityUtils$TrackedBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    return-object p1

    .line 412
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple instantiation from this factory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/android/server/security/VerityUtils$TrackedBufferFactory;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method
