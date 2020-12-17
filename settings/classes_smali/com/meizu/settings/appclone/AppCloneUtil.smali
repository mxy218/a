.class public Lcom/meizu/settings/appclone/AppCloneUtil;
.super Ljava/lang/Object;
.source "AppCloneUtil.java"


# static fields
.field private static sForceStopMethod:Ljava/lang/reflect/Method; = null

.field private static sIntentCloneIdFiled:Ljava/lang/reflect/Field; = null

.field private static sNeedReflect:Z = true


# direct methods
.method public static disabeClonePkg(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 110
    invoke-static {p0, p1}, Lcom/meizu/settings/appclone/AppCloneUtil;->removePackageRecentTask(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    invoke-static {p0, p1}, Lcom/meizu/settings/appclone/AppCloneUtil;->forceStopClonePackage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static forceStopClonePackage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11

    .line 182
    sget-boolean v0, Lcom/meizu/settings/appclone/AppCloneUtil;->sNeedReflect:Z

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "AppCloneUtil"

    if-eqz v0, :cond_38

    sget-object v0, Lcom/meizu/settings/appclone/AppCloneUtil;->sForceStopMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_38

    .line 185
    :try_start_e
    const-class v0, Landroid/app/ActivityManager;

    const-string v6, "forceStopPackageWithCloneID"

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    .line 186
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/appclone/AppCloneUtil;->sForceStopMethod:Ljava/lang/reflect/Method;

    .line 189
    sget-object v0, Lcom/meizu/settings/appclone/AppCloneUtil;->sForceStopMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_2b} :catch_2c

    goto :goto_38

    :catch_2c
    move-exception p0

    const-string p1, "forceStopClonePackage NoSuchMethodException"

    .line 191
    invoke-static {v5, p1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 193
    sput-boolean v3, Lcom/meizu/settings/appclone/AppCloneUtil;->sNeedReflect:Z

    return-void

    .line 197
    :cond_38
    :goto_38
    sget-object v0, Lcom/meizu/settings/appclone/AppCloneUtil;->sForceStopMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_42

    const-string p0, "forceStopClonePackage sForceStopMethod null"

    .line 198
    invoke-static {v5, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_42
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v6, "activity"

    .line 203
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 206
    :try_start_4e
    sget-object v6, Lcom/meizu/settings/appclone/AppCloneUtil;->sForceStopMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 206
    invoke-virtual {v6, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forceStopClonePackage pkg = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/IllegalAccessException; {:try_start_4e .. :try_end_77} :catch_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_77} :catch_82
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4e .. :try_end_77} :catch_78

    goto :goto_95

    :catch_78
    move-exception p0

    const-string p1, "forceStopClonePackage InvocationTargetException"

    .line 217
    invoke-static {v5, p1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_95

    :catch_82
    move-exception p0

    const-string p1, "forceStopClonePackage IllegalArgumentException"

    .line 214
    invoke-static {v5, p1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_95

    :catch_8c
    move-exception p0

    const-string p1, "forceStopClonePackage IllegalAccessException"

    .line 211
    invoke-static {v5, p1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_95
    return-void
.end method

.method private static getCloneId(Landroid/content/Intent;)I
    .registers 5

    const/4 v0, -0x1

    const-string v1, "AppCloneUtil"

    if-nez p0, :cond_b

    const-string p0, "getCloneId intent null"

    .line 148
    invoke-static {v1, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 151
    :cond_b
    sget-boolean v2, Lcom/meizu/settings/appclone/AppCloneUtil;->sNeedReflect:Z

    if-eqz v2, :cond_31

    sget-object v2, Lcom/meizu/settings/appclone/AppCloneUtil;->sIntentCloneIdFiled:Ljava/lang/reflect/Field;

    if-nez v2, :cond_31

    .line 154
    :try_start_13
    const-class v2, Landroid/content/Intent;

    const-string v3, "mCloneID"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/meizu/settings/appclone/AppCloneUtil;->sIntentCloneIdFiled:Ljava/lang/reflect/Field;

    .line 155
    sget-object v2, Lcom/meizu/settings/appclone/AppCloneUtil;->sIntentCloneIdFiled:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_23
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_23} :catch_24

    goto :goto_31

    :catch_24
    move-exception p0

    const-string v2, "getCloneId NoSuchFieldException"

    .line 157
    invoke-static {v1, v2}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    const/4 p0, 0x0

    .line 159
    sput-boolean p0, Lcom/meizu/settings/appclone/AppCloneUtil;->sNeedReflect:Z

    return v0

    .line 163
    :cond_31
    :goto_31
    sget-object v2, Lcom/meizu/settings/appclone/AppCloneUtil;->sIntentCloneIdFiled:Ljava/lang/reflect/Field;

    if-nez v2, :cond_3c

    const-string/jumbo p0, "sIntentCloneIdFiled null"

    .line 164
    invoke-static {v1, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 169
    :cond_3c
    :try_start_3c
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_40} :catch_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_40} :catch_41

    goto :goto_54

    :catch_41
    move-exception p0

    const-string v2, "getCloneId IllegalArgumentException"

    .line 174
    invoke-static {v1, v2}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_54

    :catch_4b
    move-exception p0

    const-string v2, "getCloneId IllegalAccessException"

    .line 171
    invoke-static {v1, v2}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 177
    :goto_54
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCloneId cloneId = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isPkgLockedByAppLock(Ljava/lang/String;)Z
    .registers 3

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "access_control"

    .line 91
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmeizu/security/IAccessControlManager$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/security/IAccessControlManager;

    move-result-object v0

    .line 93
    :try_start_12
    invoke-interface {v0, p0}, Lmeizu/security/IAccessControlManager;->isAppUnlocked(Ljava/lang/String;)B

    move-result p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_19

    if-nez p0, :cond_19

    const/4 v1, 0x1

    :catch_19
    :cond_19
    return v1
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppClone"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppClone"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static removePackageRecentTask(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const-string v0, "activity"

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object p0

    const-string v0, "AppCloneUtil"

    if-eqz p0, :cond_98

    .line 119
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto/16 :goto_98

    .line 123
    :cond_1c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 125
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v2, :cond_44

    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_39

    goto :goto_44

    .line 126
    :cond_39
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_45

    :cond_44
    :goto_44
    const/4 v2, 0x0

    .line 127
    :goto_45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removePackageRecentTask find baseIntentPkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    goto :goto_20

    .line 131
    :cond_61
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/meizu/settings/appclone/AppCloneUtil;->getCloneId(Landroid/content/Intent;)I

    move-result v2

    if-gtz v2, :cond_6a

    goto :goto_20

    .line 137
    :cond_6a
    :try_start_6a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 138
    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-interface {v3, v1}, Landroid/app/IActivityManager;->removeTaskNotKillProcess(I)Z

    move-result v1

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removePackageRecentTask ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cloneId = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_91} :catch_92

    goto :goto_20

    :catch_92
    move-exception v1

    .line 141
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_20

    :cond_97
    return-void

    :cond_98
    :goto_98
    const-string/jumbo p0, "removePackageRecentTask empty"

    .line 120
    invoke-static {v0, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showAppCloneEntry(Landroid/content/Context;)Z
    .registers 5

    .line 59
    invoke-static {p0}, Lcom/meizu/settings/utils/FlymeLabHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/FlymeLabHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/utils/FlymeLabHelper;->isFlymeLabHasAppCloneFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4a

    .line 60
    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_4a

    .line 63
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "children_mode"

    .line 64
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    move v2, v3

    goto :goto_22

    :cond_21
    move v2, v1

    :goto_22
    if-eqz v2, :cond_25

    return v1

    :cond_25
    const-string v2, "mz_easy_mode"

    .line 69
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2f

    move v2, v3

    goto :goto_30

    :cond_2f
    move v2, v1

    :goto_30
    if-eqz v2, :cond_33

    return v1

    :cond_33
    const-string v2, "mz_current_power_mode"

    .line 74
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3e

    move v0, v3

    goto :goto_3f

    :cond_3e
    move v0, v1

    :goto_3f
    if-eqz v0, :cond_42

    return v1

    .line 79
    :cond_42
    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_49

    return v1

    :cond_49
    return v3

    :cond_4a
    :goto_4a
    return v1
.end method

.method public static startVerifyAppLock(Landroid/app/Fragment;)V
    .registers 4

    if-eqz p0, :cond_1b

    .line 100
    invoke-virtual {p0}, Landroid/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1b

    .line 103
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.CONFIRM_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    const-string/jumbo v2, "password_from"

    .line 104
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1b
    :goto_1b
    return-void
.end method
