.class public Lcom/android/settingslib/RestrictedLockUtilsInternal;
.super Lcom/android/settingslib/RestrictedLockUtils;
.source "RestrictedLockUtilsInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/RestrictedLockUtilsInternal$Proxy;
    }
.end annotation


# static fields
.field static sProxy:Lcom/android/settingslib/RestrictedLockUtilsInternal$Proxy;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 684
    new-instance v0, Lcom/android/settingslib/RestrictedLockUtilsInternal$Proxy;

    invoke-direct {v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal$Proxy;-><init>()V

    sput-object v0, Lcom/android/settingslib/RestrictedLockUtilsInternal;->sProxy:Lcom/android/settingslib/RestrictedLockUtilsInternal$Proxy;

    return-void
.end method

.method public static checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .registers 8

    const-string v0, "device_policy"

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 94
    :cond_c
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 96
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/UserManager;->getUserRestrictionSources(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 98
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    return-object v1

    .line 101
    :cond_1f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2b

    .line 102
    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->createDefaultEnforcedAdminWithRestriction(Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0

    :cond_2b
    const/4 v3, 0x0

    .line 105
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v4}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v4

    .line 106
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v2}, Landroid/os/UserManager$EnforcingUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x4

    if-ne v4, v3, :cond_62

    if-ne v2, p2, :cond_4e

    .line 110
    invoke-static {p0, p1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getProfileOwner(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0

    .line 114
    :cond_4e
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 115
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, p2, :cond_5d

    .line 116
    invoke-static {p0, p1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getProfileOwner(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    goto :goto_61

    .line 117
    :cond_5d
    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->createDefaultEnforcedAdminWithRestriction(Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    :goto_61
    return-object p0

    :cond_62
    const/4 v0, 0x2

    if-ne v4, v0, :cond_71

    if-ne v2, p2, :cond_6c

    .line 123
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    goto :goto_70

    .line 124
    :cond_6c
    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->createDefaultEnforcedAdminWithRestriction(Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    :goto_70
    return-object p0

    :cond_71
    return-object v1
.end method

.method private static getDeviceOwner(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .registers 4

    const-string v0, "device_policy"

    .line 551
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return-object v0

    .line 556
    :cond_c
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 558
    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 559
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_1b
    return-object v0
.end method

.method private static getProfileOwner(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .registers 5

    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-ne p2, v1, :cond_6

    return-object v0

    :cond_6
    const-string v1, "device_policy"

    .line 573
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-nez p0, :cond_11

    return-object v0

    .line 578
    :cond_11
    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 580
    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getUserHandleOf(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_20
    return-object v0
.end method

.method private static getUserHandleOf(I)Landroid/os/UserHandle;
    .registers 2

    const/16 v0, -0x2710

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 176
    :cond_6
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public static hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    const-string/jumbo v0, "user"

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 134
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method
