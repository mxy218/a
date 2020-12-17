.class public Lcom/flyme/systemui/smarttouch/Simulate;
.super Ljava/lang/Object;
.source "Simulate.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public static back(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    const-string v0, "SmartTouch"

    const-string/jumbo v1, "simulate back"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Lcom/flyme/systemui/smarttouch/Simulate$1;

    invoke-direct {v0}, Lcom/flyme/systemui/smarttouch/Simulate$1;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "back"

    .line 55
    invoke-static {p0, p1}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static expandNotifications(Landroid/content/Context;)V
    .registers 6

    const-string v0, "SmartTouch"

    const-string/jumbo v1, "simulate expandNotifications"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "statusbar"

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "expandNotificationsPanel"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 63
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_26
    const-string v0, "expand_statusbar"

    .line 67
    invoke-static {p0, v0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static expandTask(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    const-string p1, "SmartTouch"

    const-string/jumbo v0, "simulate expand recenttask"

    .line 99
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    .line 104
    invoke-virtual {p1}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 106
    new-instance v0, Lcom/flyme/systemui/smarttouch/-$$Lambda$Simulate$lSWGulD8yg9f1MI_YWBWLfDtHSI;

    invoke-direct {v0, p1}, Lcom/flyme/systemui/smarttouch/-$$Lambda$Simulate$lSWGulD8yg9f1MI_YWBWLfDtHSI;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 117
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1e
    const-string p1, "expand_task"

    .line 120
    invoke-static {p0, p1}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getHomes(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 197
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    .line 198
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 200
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 201
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_33
    return-object v0
.end method

.method public static isHome(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "activity"

    .line 210
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 211
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 212
    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/Simulate;->getHomes(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static killTask(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7

    const-string p1, "android.intent.category.HOME"

    const-string v0, "android.intent.action.MAIN"

    :try_start_4
    const-string v1, "activity"

    .line 125
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    .line 126
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 127
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 128
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 131
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 132
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 135
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10104000

    .line 136
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    invoke-virtual {v4, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string p1, "SmartTouch"

    const-string/jumbo v0, "simulate kill current task"

    .line 141
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    iget-object p1, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 145
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5e} :catch_61

    if-eqz p1, :cond_65

    return-void

    :catch_61
    move-exception p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_65
    const-string p1, "kill_task"

    .line 166
    invoke-static {p0, p1}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$expandTask$0(Lcom/android/systemui/recents/OverviewProxyService;)V
    .registers 3

    const-string v0, "SmartTouch"

    .line 108
    :try_start_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewToggle()V

    goto :goto_1c

    :cond_10
    const-string p0, "mOverviewProxyService.getProxy() is null !!!"

    .line 111
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception p0

    const-string v1, "Cannot send toggle recents through proxy service."

    .line 114
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method public static lockNow(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    const-string p1, "SmartTouch"

    const-string/jumbo v0, "simulate lock screen"

    .line 88
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    const-string p1, "power"

    .line 90
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    const-string p1, "lock"

    .line 92
    invoke-static {p0, p1}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_1c

    :catch_1c
    return-void
.end method

.method public static menu(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    const-string v0, "SmartTouch"

    const-string/jumbo v1, "simulate menu"

    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/Simulate;->isHome(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 174
    :cond_f
    new-instance v0, Lcom/flyme/systemui/smarttouch/Simulate$2;

    invoke-direct {v0}, Lcom/flyme/systemui/smarttouch/Simulate$2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "menu"

    .line 185
    invoke-static {p0, p1}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static toHome(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    const-string p1, "SmartTouch"

    const-string/jumbo v0, "simulate launche home"

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10104000

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.category.HOME"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    :try_start_1a
    sget v0, Lcom/android/systemui/R$anim;->smarttouch_enter:I

    sget v1, Lcom/android/systemui/R$anim;->smarttouch_exit:I

    .line 79
    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 78
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_2b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1a .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p1

    .line 82
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_30
    const-string/jumbo p1, "tohome"

    .line 84
    invoke-static {p0, p1}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
