.class public Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;
.super Lcom/google/android/startop/iorap/AppLaunchEvent;
.source "AppLaunchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/AppLaunchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityLaunchCancelled"
.end annotation


# instance fields
.field public final activityRecordSnapshot:[B


# direct methods
.method public constructor <init>(J[B)V
    .registers 4

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent;-><init>(J)V

    .line 239
    iput-object p3, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;->activityRecordSnapshot:[B

    .line 240
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 269
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent;-><init>(Landroid/os/Parcel;)V

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 271
    invoke-static {p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityRecordProtoParcelable;->create(Landroid/os/Parcel;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;->activityRecordSnapshot:[B

    goto :goto_13

    .line 273
    :cond_10
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;->activityRecordSnapshot:[B

    .line 275
    :goto_13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 244
    instance-of v0, p1, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 245
    iget-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;->activityRecordSnapshot:[B

    move-object v2, p1

    check-cast v2, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;

    iget-object v2, v2, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;->activityRecordSnapshot:[B

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 247
    invoke-super {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    nop

    .line 245
    :goto_1b
    return v1

    .line 249
    :cond_1c
    return v1
.end method

.method protected toStringBody()Ljava/lang/String;
    .registers 3

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;->activityRecordSnapshot:[B

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeToParcelImpl(Landroid/os/Parcel;I)V
    .registers 4

    .line 259
    invoke-super {p0, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent;->writeToParcelImpl(Landroid/os/Parcel;I)V

    .line 260
    iget-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;->activityRecordSnapshot:[B

    if-eqz v0, :cond_11

    .line 261
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 262
    iget-object v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchCancelled;->activityRecordSnapshot:[B

    invoke-static {p1, v0, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityRecordProtoParcelable;->write(Landroid/os/Parcel;[BI)V

    goto :goto_15

    .line 264
    :cond_11
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 266
    :goto_15
    return-void
.end method
