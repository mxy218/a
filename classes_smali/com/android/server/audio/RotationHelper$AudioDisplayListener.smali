.class final Lcom/android/server/audio/RotationHelper$AudioDisplayListener;
.super Ljava/lang/Object;
.source "RotationHelper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RotationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AudioDisplayListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    .line 120
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2

    .line 128
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 129
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    .line 124
    return-void
.end method
