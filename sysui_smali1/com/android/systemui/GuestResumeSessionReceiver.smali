.class public Lcom/android/systemui/GuestResumeSessionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GuestResumeSessionReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;
    }
.end annotation


# instance fields
.field private mNewSessionDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .registers 2

    .line 40
    invoke-static {p0, p1}, Lcom/android/systemui/GuestResumeSessionReceiver;->wipeGuestSession(Landroid/content/Context;I)V

    return-void
.end method

.method private cancelDialog()V
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 140
    iget-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    :cond_12
    return-void
.end method

.method private static wipeGuestSession(Landroid/content/Context;I)V
    .registers 7

    const-string v0, "GuestResumeSessionReceiver"

    const-string/jumbo v1, "user"

    .line 96
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 99
    :try_start_b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_ae

    .line 104
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const-string v4, "User requesting to start a new session ("

    if-eq v3, p1, :cond_3b

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is not current user ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_3b
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-nez v3, :cond_59

    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is not a guest"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 115
    :cond_59
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->markGuestForDeletion(I)Z

    move-result v3

    if-nez v3, :cond_76

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t mark the guest for deletion for user "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_76
    iget-object p1, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_99

    :try_start_7e
    const-string p0, "Could not create new guest, switching back to system user"

    .line 124
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 126
    iget p0, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, p0}, Landroid/os/UserManager;->removeUser(I)Z

    .line 127
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V

    return-void

    .line 130
    :cond_99
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 131
    iget p0, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, p0}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_a7} :catch_a8

    return-void

    :catch_a8
    const-string p0, "Couldn\'t wipe session because ActivityManager or WindowManager is dead"

    .line 133
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_ae
    const-string p0, "Couldn\'t wipe session because ActivityManager is dead"

    .line 101
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/GuestResumeSessionReceiver;->cancelDialog()V

    const/16 v0, -0x2710

    const-string v1, "android.intent.extra.user_handle"

    .line 61
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_38

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " sent to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GuestResumeSessionReceiver"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " without EXTRA_USER_HANDLE"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_38
    :try_start_38
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p2
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_40} :catch_67

    .line 73
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p2

    if-nez p2, :cond_47

    return-void

    .line 77
    :cond_47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x0

    const-string/jumbo v2, "systemui.guest_has_logged_in"

    .line 78
    invoke-static {p2, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_62

    .line 81
    new-instance p2, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;

    invoke-direct {p2, p1, v1}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    .line 82
    iget-object p0, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_67

    :cond_62
    const/4 p0, 0x1

    .line 84
    invoke-static {p2, v2, p0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    nop

    :catch_67
    :cond_67
    :goto_67
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .registers 8

    .line 49
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 50
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
