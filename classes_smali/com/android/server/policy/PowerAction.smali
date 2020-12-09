.class public final Lcom/android/server/policy/PowerAction;
.super Lcom/android/internal/globalactions/SinglePressAction;
.source "PowerAction.java"

# interfaces
.implements Lcom/android/internal/globalactions/LongPressAction;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 5

    .line 31
    const v0, 0x1080030

    const v1, 0x10402bf

    invoke-direct {p0, v0, v1}, Lcom/android/internal/globalactions/SinglePressAction;-><init>(II)V

    .line 32
    iput-object p1, p0, Lcom/android/server/policy/PowerAction;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/server/policy/PowerAction;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 34
    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/android/server/policy/PowerAction;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 39
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 40
    iget-object v0, p0, Lcom/android/server/policy/PowerAction;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    .line 41
    return v1

    .line 43
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/android/server/policy/PowerAction;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 60
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .line 48
    const/4 v0, 0x1

    return v0
.end method
