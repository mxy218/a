.class public interface abstract Lcom/android/server/policy/gamemode/GameModeController;
.super Ljava/lang/Object;
.source "GameModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/gamemode/GameModeController$Callback;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/server/policy/gamemode/GameModeController$Callback;)V
.end method

.method public abstract isGameMode()Z
.end method

.method public abstract isScreenBrightnessLocked()Z
.end method

.method public abstract isStatusBarDisabled()Z
.end method

.method public abstract removeCallback(Lcom/android/server/policy/gamemode/GameModeController$Callback;)V
.end method
