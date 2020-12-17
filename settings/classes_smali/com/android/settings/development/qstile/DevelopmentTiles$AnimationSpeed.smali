.class public Lcom/android/settings/development/qstile/DevelopmentTiles$AnimationSpeed;
.super Lcom/android/settings/development/qstile/DevelopmentTiles;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationSpeed"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;-><init>()V

    return-void
.end method


# virtual methods
.method protected isEnabled()Z
    .registers 3

    .line 159
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 161
    :try_start_5
    invoke-interface {p0, v0}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_10

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    :catch_10
    :cond_10
    return v0
.end method

.method protected setIsEnabled(Z)V
    .registers 3

    .line 169
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    if-eqz p1, :cond_9

    const/high16 p1, 0x41200000  # 10.0f

    goto :goto_b

    :cond_9
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_b
    const/4 v0, 0x0

    .line 172
    :try_start_c
    invoke-interface {p0, v0, p1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    const/4 v0, 0x1

    .line 173
    invoke-interface {p0, v0, p1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    const/4 v0, 0x2

    .line 174
    invoke-interface {p0, v0, p1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method
