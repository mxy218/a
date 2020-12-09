.class public Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;
.super Ljava/lang/Object;
.source "LegacyRoleResolutionPolicy.java"

# interfaces
.implements Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "LegacyRoleResolutionPol"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method public getRoleHolders(Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_154

    :cond_c
    goto :goto_49

    :sswitch_d
    const-string v0, "android.app.role.BROWSER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v5

    goto :goto_4a

    :sswitch_17
    const-string v0, "android.app.role.EMERGENCY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_4a

    :sswitch_21
    const-string v0, "android.app.role.ASSISTANT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_4a

    :sswitch_2b
    const-string v0, "android.app.role.HOME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_4a

    :sswitch_35
    const-string v0, "android.app.role.DIALER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v4

    goto :goto_4a

    :sswitch_3f
    const-string v0, "android.app.role.SMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_4a

    :goto_49
    const/4 v0, -0x1

    :goto_4a
    const/4 v6, 0x0

    if-eqz v0, :cond_10f

    if-eq v0, v5, :cond_fe

    if-eq v0, v4, :cond_ce

    if-eq v0, v3, :cond_9d

    if-eq v0, v2, :cond_83

    if-eq v0, v1, :cond_72

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Don\'t know how to find legacy role holders for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LegacyRoleResolutionPol"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 134
    :cond_72
    iget-object p1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 134
    const-string v0, "emergency_assistance_application"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 127
    :cond_83
    iget-object p1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 128
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p1

    .line 130
    if-eqz p1, :cond_98

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 131
    :cond_98
    invoke-static {v6}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 112
    :cond_9d
    iget-object p1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "sms_default_application"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b2

    .line 116
    move-object v6, p1

    goto :goto_c9

    .line 117
    :cond_b2
    iget-object p1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 120
    iget-object p1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    const p2, 0x1040024

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_c9

    .line 122
    :cond_c8
    nop

    .line 124
    :goto_c9
    invoke-static {v6}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 95
    :cond_ce
    iget-object p1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "dialer_default_application"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e2

    .line 99
    move-object v6, p1

    goto :goto_f9

    .line 100
    :cond_e2
    iget-object p1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result p1

    if-eqz p1, :cond_f8

    .line 105
    iget-object p1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    const p2, 0x1040023

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_f9

    .line 107
    :cond_f8
    nop

    .line 109
    :goto_f9
    invoke-static {v6}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 88
    :cond_fe
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 90
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManagerInternal;->removeLegacyDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 68
    :cond_10f
    iget-object p1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "assistant"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 72
    if-eqz p1, :cond_130

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_12f

    .line 74
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 75
    if-eqz p1, :cond_12e

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    .line 76
    :cond_12e
    goto :goto_14e

    .line 77
    :cond_12f
    goto :goto_14e

    .line 79
    :cond_130
    iget-object p1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result p1

    if-eqz p1, :cond_14d

    .line 80
    iget-object p1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    const p2, 0x1040021

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_14c

    move-object v6, p1

    .line 82
    :cond_14c
    goto :goto_14e

    .line 83
    :cond_14d
    nop

    .line 85
    :goto_14e
    invoke-static {v6}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_154
    .sparse-switch
        0x1a6aee0d -> :sswitch_3f
        0x27b422c9 -> :sswitch_35
        0x32edda8b -> :sswitch_2b
        0x61734092 -> :sswitch_21
        0x6d529345 -> :sswitch_17
        0x7529d9dc -> :sswitch_d
    .end sparse-switch
.end method
