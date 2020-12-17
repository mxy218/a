.class public interface abstract Lcom/android/server/inputmethod/GameModeController;
.super Ljava/lang/Object;
.source "GameModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;
    }
.end annotation


# virtual methods
.method public abstract addGameModeControllerCallback(Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;)V
.end method

.method public abstract isGameScene()Z
.end method

.method public abstract removeGameModeControllerCallback(Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;)V
.end method

.method public abstract setListening(Z)V
.end method

.method public abstract shouldUseGameKeyboard()Z
.end method
