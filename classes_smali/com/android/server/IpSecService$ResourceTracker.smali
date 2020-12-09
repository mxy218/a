.class Lcom/android/server/IpSecService$ResourceTracker;
.super Ljava/lang/Object;
.source "IpSecService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceTracker"
.end annotation


# instance fields
.field mCurrent:I

.field private final mMax:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput p1, p0, Lcom/android/server/IpSecService$ResourceTracker;->mMax:I

    .line 327
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/IpSecService$ResourceTracker;->mCurrent:I

    .line 328
    return-void
.end method


# virtual methods
.method give()V
    .registers 3

    .line 342
    iget v0, p0, Lcom/android/server/IpSecService$ResourceTracker;->mCurrent:I

    if-gtz v0, :cond_b

    .line 343
    const-string v0, "IpSecService"

    const-string v1, "We\'ve released this resource too many times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_b
    iget v0, p0, Lcom/android/server/IpSecService$ResourceTracker;->mCurrent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/IpSecService$ResourceTracker;->mCurrent:I

    .line 346
    return-void
.end method

.method isAvailable()Z
    .registers 3

    .line 331
    iget v0, p0, Lcom/android/server/IpSecService$ResourceTracker;->mCurrent:I

    iget v1, p0, Lcom/android/server/IpSecService$ResourceTracker;->mMax:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method take()V
    .registers 3

    .line 335
    invoke-virtual {p0}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    .line 336
    const-string v0, "IpSecService"

    const-string v1, "Too many resources allocated!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_d
    iget v0, p0, Lcom/android/server/IpSecService$ResourceTracker;->mCurrent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/IpSecService$ResourceTracker;->mCurrent:I

    .line 339
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    const-string/jumbo v1, "{mCurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$ResourceTracker;->mCurrent:I

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, ", mMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$ResourceTracker;->mMax:I

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    return-object v0
.end method
