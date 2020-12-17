.class Lcom/meizu/settings/applications/ManageApplications$2;
.super Landroid/os/AsyncTask;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/ManageApplications;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/ManageApplications;

.field final synthetic val$aom:Landroid/app/AppOpsManager;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$mIPm:Landroid/content/pm/IPackageManager;

.field final synthetic val$nm:Landroid/app/INotificationManager;

.field final synthetic val$npm:Landroid/net/NetworkPolicyManager;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V
    .registers 8

    .line 1988
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$2;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    iput-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$2;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/meizu/settings/applications/ManageApplications$2;->val$nm:Landroid/app/INotificationManager;

    iput-object p4, p0, Lcom/meizu/settings/applications/ManageApplications$2;->val$mIPm:Landroid/content/pm/IPackageManager;

    iput-object p5, p0, Lcom/meizu/settings/applications/ManageApplications$2;->val$aom:Landroid/app/AppOpsManager;

    iput-object p6, p0, Lcom/meizu/settings/applications/ManageApplications$2;->val$npm:Landroid/net/NetworkPolicyManager;

    iput-object p7, p0, Lcom/meizu/settings/applications/ManageApplications$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1988
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/ManageApplications$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 9

    .line 1990
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$2;->val$pm:Landroid/content/pm/PackageManager;

    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 1992
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_39

    .line 1993
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 1996
    :try_start_17
    iget-object v4, p0, Lcom/meizu/settings/applications/ManageApplications$2;->val$nm:Landroid/app/INotificationManager;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v4, v5, v6, v3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_20

    .line 1999
    :catch_20
    iget-boolean v4, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_36

    .line 2001
    iget-object v4, p0, Lcom/meizu/settings/applications/ManageApplications$2;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_36

    .line 2003
    iget-object v4, p0, Lcom/meizu/settings/applications/ManageApplications$2;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2, v0, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2012
    :cond_39
    :try_start_39
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$2;->val$mIPm:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_42} :catch_42

    .line 2016
    :catch_42
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$2;->val$aom:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 2017
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$2;->val$npm:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p1, v3}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object p1

    .line 2019
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 2020
    array-length v2, p1

    move v3, v0

    :goto_53
    if-ge v3, v2, :cond_65

    aget v4, p1, v3

    .line 2022
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v5, v1, :cond_62

    .line 2024
    iget-object v5, p0, Lcom/meizu/settings/applications/ManageApplications$2;->val$npm:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v5, v4, v0}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 2027
    :cond_65
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$2;->val$handler:Landroid/os/Handler;

    new-instance v0, Lcom/meizu/settings/applications/ManageApplications$2$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/ManageApplications$2$1;-><init>(Lcom/meizu/settings/applications/ManageApplications$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return-object p0
.end method
