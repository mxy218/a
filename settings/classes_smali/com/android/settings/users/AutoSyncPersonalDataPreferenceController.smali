.class public Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;
.super Lcom/android/settings/users/AutoSyncDataPreferenceController;
.source "AutoSyncPersonalDataPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/AutoSyncDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string p0, "auto_sync_personal_account_data"

    return-object p0
.end method

.method public isAvailable()Z
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 35
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method
