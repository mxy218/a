.class final Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceVolumeUpdate"
.end annotation


# static fields
.field private static final NO_NEW_INDEX:I = -0x801


# instance fields
.field final mCaller:Ljava/lang/String;

.field final mDevice:I

.field final mStreamType:I

.field private final mVssVolIndex:I


# direct methods
.method constructor <init>(IIILjava/lang/String;)V
    .registers 5

    .line 5072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5073
    iput p1, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mStreamType:I

    .line 5074
    iput p2, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    .line 5075
    iput p3, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    .line 5076
    iput-object p4, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    .line 5077
    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 5081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5082
    iput p1, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mStreamType:I

    .line 5083
    const/16 p1, -0x801

    iput p1, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    .line 5084
    iput p2, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    .line 5085
    iput-object p3, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    .line 5086
    return-void
.end method


# virtual methods
.method getVolumeIndex()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 5093
    iget v0, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    const/16 v1, -0x801

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 5094
    iget v0, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    return v0
.end method

.method hasVolumeIndex()Z
    .registers 3

    .line 5089
    iget v0, p0, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mVssVolIndex:I

    const/16 v1, -0x801

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
