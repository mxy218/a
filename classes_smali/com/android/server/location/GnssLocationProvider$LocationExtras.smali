.class Lcom/android/server/location/GnssLocationProvider$LocationExtras;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationExtras"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mMaxCn0:I

.field private mMeanCn0:I

.field private mSvCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    .line 251
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .registers 3

    .line 278
    monitor-enter p0

    .line 279
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit p0

    return-object v0

    .line 280
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public reset()V
    .registers 2

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->set(III)V

    .line 264
    return-void
.end method

.method public set(III)V
    .registers 4

    .line 254
    monitor-enter p0

    .line 255
    :try_start_1
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mSvCount:I

    .line 256
    iput p2, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mMeanCn0:I

    .line 257
    iput p3, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mMaxCn0:I

    .line 258
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_e

    .line 259
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->setBundle(Landroid/os/Bundle;)V

    .line 260
    return-void

    .line 258
    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .registers 4

    .line 268
    if-eqz p1, :cond_1e

    .line 269
    monitor-enter p0

    .line 270
    :try_start_3
    const-string/jumbo v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    const-string v0, "meanCn0"

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mMeanCn0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    const-string v0, "maxCn0"

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->mMaxCn0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    monitor-exit p0

    goto :goto_1e

    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1

    .line 275
    :cond_1e
    :goto_1e
    return-void
.end method
