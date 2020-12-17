.class public Lcom/flyme/systemui/statusbar/policy/flashlight;
.super Ljava/lang/Object;
.source "flashlight.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 18
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f(Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 13
    move v0, p0

    :try_start_1
    sget-object v4, Lcom/flyme/systemui/statusbar/policy/flashlight;->context:Landroid/content/Context;

    const-string v5, "camera"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager;

    move-object v2, v4

    .line 14
    move-object v4, v2

    move-object v5, v2

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_19} :catch_1a

    .line 16
    :goto_19
    return-void

    .line 14
    :catch_1a
    move-exception v4

    move-object v2, v4

    .line 16
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_19
.end method

.method public static init(Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9
    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/flyme/systemui/statusbar/policy/flashlight;->context:Landroid/content/Context;

    return-void
.end method
