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

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(I)V
    .registers 2

    .line 114
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 2

    .line 142
    return-void
.end method

.method public onAppTransitionPendingLocked()V
    .registers 1

    .line 107
    return-void
.end method

.method public onAppTransitionStartingLocked(IJJJ)I
    .registers 8

    .line 134
    const/4 p1, 0x0

    return p1
.end method
