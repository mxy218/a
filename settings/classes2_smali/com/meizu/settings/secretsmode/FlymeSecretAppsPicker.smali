.class public Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;
.super Lcom/meizu/settings/applications/MzAppsPickActivity;
.source "FlymeSecretAppsPicker.java"


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPrivateAppPickFilter:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity;-><init>()V

    .line 38
    new-instance v0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$1;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;)V

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;->mPrivateAppPickFilter:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 92
    new-instance v0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$2;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;->checkIfNeedFinish()V

    return-void
.end method

.method private checkIfNeedFinish()V
    .registers 2

    .line 191
    invoke-static {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->needFinishSecretsModeActivity()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_d
    return-void
.end method

.method private showDialog(Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V
    .registers 12

    .line 151
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;->mContext:Landroid/content/Context;

    const v1, 0x7f120160

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 152
    new-instance v7, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$3;

    invoke-direct {v7, p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$3;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V

    .line 160
    new-instance v8, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$4;

    invoke-direct {v8, p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$4;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V

    .line 169
    new-instance v9, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$5;

    invoke-direct {v9, p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker$5;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V

    .line 178
    invoke-static {}, Lcom/meizu/settings/appclone/AppCloneAlertHelper;->getInstance()Lcom/meizu/settings/appclone/AppCloneAlertHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;->mContext:Landroid/content/Context;

    const-string v4, "FlymeSecretAppsPicker"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/meizu/settings/appclone/AppCloneAlertHelper;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method protected isCloneItemIncluded()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected isItemCanCheckAlone()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 107
    invoke-super {p0, p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "FlymeSecretAppsPicker"

    const-string v0, "oncreate"

    .line 108
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;->mContentObserver:Landroid/database/ContentObserver;

    invoke-static {p1, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->registerSecretsModeRunningObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 112
    iput-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 184
    invoke-super {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->onDestroy()V

    const-string v0, "FlymeSecretAppsPicker"

    const-string v1, "onDestroy"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;->mContentObserver:Landroid/database/ContentObserver;

    invoke-static {v0, p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->unregisterSecretsModeRunningObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onInitAppFilter()Lcom/meizu/settings/applications/ApplicationsState$AppFilter;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;->mPrivateAppPickFilter:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    return-object p0
.end method

.method protected onInitDefaultPickedItem()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "private_pkg_list"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 119
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, ","

    .line 120
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 122
    :cond_1b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method protected onRelatedItemCheckChanged(ZLcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V
    .registers 3

    if-eqz p1, :cond_6

    .line 144
    invoke-direct {p0, p2}, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;->showDialog(Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V

    return-void

    .line 147
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/applications/MzAppsPickActivity;->onRelatedItemCheckChanged(ZLcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V

    return-void
.end method
