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

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nativeAcquireSuspendBlocker(Ljava/lang/String;)V
    .registers 2

    .line 704
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$400(Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public nativeForceSuspend()Z
    .registers 2

    .line 734
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1000()Z

    move-result v0

    return v0
.end method

.method public nativeInit(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 699
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)V

    .line 700
    return-void
.end method

.method public nativeReleaseSuspendBlocker(Ljava/lang/String;)V
    .registers 2

    .line 709
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$500(Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method public nativeSendPowerHint(II)V
    .registers 3

    .line 724
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$800(II)V

    .line 725
    return-void
.end method

.method public nativeSetAutoSuspend(Z)V
    .registers 2

    .line 719
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$700(Z)V

    .line 720
    return-void
.end method

.method public nativeSetFeature(II)V
    .registers 3

    .line 729
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$900(II)V

    .line 730
    return-void
.end method

.method public nativeSetInteractive(Z)V
    .registers 2

    .line 714
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$600(Z)V

    .line 715
    return-void
.end method
