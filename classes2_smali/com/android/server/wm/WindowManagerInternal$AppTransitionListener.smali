.class public abstract Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.super Ljava/lang/Object;
.source "WindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AppTransitionListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(I)V
    .registers 2
    .param p1, "transit"  # I

    .line 115
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"  # Landroid/os/IBinder;

    .line 143
    return-void
.end method

.method public onAppTransitionPendingLocked()V
    .registers 1

    .line 108
    return-void
.end method

.method public onAppTransitionStartingLocked(IJJJ)I
    .registers 9
    .param p1, "transit"  # I
    .param p2, "duration"  # J
    .param p4, "statusBarAnimationStartTime"  # J
    .param p6, "statusBarAnimationDuration"  # J

    .line 135
    const/4 v0, 0x0

    return v0
.end method
