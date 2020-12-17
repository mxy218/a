.class public interface abstract Lcom/flyme/systemui/statusbar/policy/GameModeController;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;
    }
.end annotation


# virtual methods
.method public abstract addGameModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;)V
.end method

.method public abstract isDNDEnableAndInGameMode()Z
.end method

.method public abstract isGameMode()Z
.end method

.method public abstract isGameModeDisableBottomSlide()Z
.end method

.method public abstract isGameModeDisableMback()Z
.end method

.method public abstract removeGameModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;)V
.end method
