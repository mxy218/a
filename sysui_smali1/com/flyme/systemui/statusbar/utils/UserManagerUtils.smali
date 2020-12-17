.class public Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;
.super Ljava/lang/Object;
.source "UserManagerUtils.java"


# direct methods
.method public static isGuestUser()Z
    .registers 2

    .line 17
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_d

    .line 22
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    return v0

    :catch_d
    const-string v0, "UserManagerUtil"

    const-string v1, "failed to determine current user."

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
