.class public final Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;
.super Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;
.source "AppLaunchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/AppLaunchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityLaunched"
.end annotation


# instance fields
.field public final temperature:I


# direct methods
.method public constructor <init>(J[BI)V
    .registers 5

    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;-><init>(J[B)V

    .line 189
    iput p4, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;->temperature:I

    .line 190
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 213
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;-><init>(Landroid/os/Parcel;)V

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;->temperature:I

    .line 215
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 194
    instance-of v0, p1, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 195
    iget v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;->temperature:I

    move-object v2, p1

    check-cast v2, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;

    iget v2, v2, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;->temperature:I

    if-ne v0, v2, :cond_16

    .line 196
    invoke-super {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    nop

    .line 195
    :goto_17
    return v1

    .line 198
    :cond_18
    return v1
.end method

.method protected toStringBody()Ljava/lang/String;
    .registers 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;->temperature:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeToParcelImpl(Landroid/os/Parcel;I)V
    .registers 3

    .line 208
    invoke-super {p0, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->writeToParcelImpl(Landroid/os/Parcel;I)V

    .line 209
    iget p2, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunched;->temperature:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    return-void
.end method
