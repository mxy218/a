.class public Lcom/android/server/power/PowerManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nativeAcquireSuspendBlocker(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"  # Ljava/lang/String;

    .line 687
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$400(Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method public nativeForceSuspend()Z
    .registers 2

    .line 717
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1000()Z

    move-result v0

    return v0
.end method

.method public nativeInit(Lcom/android/server/power/PowerManagerService;)V
    .registers 2
    .param p1, "service"  # Lcom/android/server/power/PowerManagerService;

    .line 682
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)V

    .line 683
    return-void
.end method

.method public nativeReleaseSuspendBlocker(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"  # Ljava/lang/String;

    .line 692
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$500(Ljava/lang/String;)V

    .line 693
    return-void
.end method

.method public nativeSendPowerHint(II)V
    .registers 3
    .param p1, "hintId"  # I
    .param p2, "data"  # I

    .line 707
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$800(II)V

    .line 708
    return-void
.end method

.method public nativeSetAutoSuspend(Z)V
    .registers 2
    .param p1, "enable"  # Z

    .line 702
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$700(Z)V

    .line 703
    return-void
.end method

.method public nativeSetFeature(II)V
    .registers 3
    .param p1, "featureId"  # I
    .param p2, "data"  # I

    .line 712
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$900(II)V

    .line 713
    return-void
.end method

.method public nativeSetInteractive(Z)V
    .registers 2
    .param p1, "enable"  # Z

    .line 697
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$600(Z)V

    .line 698
    return-void
.end method
