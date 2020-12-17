.class Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
.super Landroid/app/PackageInstallObserver;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageInstallObserverAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSessionId:I

.field private final mShowNotification:Z

.field private final mTarget:Landroid/content/IntentSender;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentSender;IZI)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "target"  # Landroid/content/IntentSender;
    .param p3, "sessionId"  # I
    .param p4, "showNotification"  # Z
    .param p5, "userId"  # I

    .line 1010
    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    .line 1011
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    .line 1012
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mTarget:Landroid/content/IntentSender;

    .line 1013
    iput p3, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mSessionId:I

    .line 1014
    iput-boolean p4, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mShowNotification:Z

    .line 1015
    iput p5, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mUserId:I

    .line 1016
    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "basePackageName"  # Ljava/lang/String;
    .param p2, "returnCode"  # I
    .param p3, "msg"  # Ljava/lang/String;
    .param p4, "extras"  # Landroid/os/Bundle;

    .line 1034
    const/4 v0, 0x1

    if-ne v0, p2, :cond_3e

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mShowNotification:Z

    if-eqz v1, :cond_3e

    .line 1035
    if-eqz p4, :cond_12

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1036
    .local v0, "update":Z
    :goto_13
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    .line 1037
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1038
    if-eqz v0, :cond_1f

    const v3, 0x104049f

    goto :goto_22

    .line 1039
    :cond_1f
    const v3, 0x104049e

    .line 1038
    :goto_22
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mUserId:I

    .line 1036
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/pm/PackageInstallerService;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v1

    .line 1042
    .local v1, "notification":Landroid/app/Notification;
    if-eqz v1, :cond_3e

    .line 1043
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    .line 1044
    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1045
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    const/16 v3, 0x15

    invoke-virtual {v2, p1, v3, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1050
    .end local v0  # "update":Z
    .end local v1  # "notification":Landroid/app/Notification;
    .end local v2  # "notificationManager":Landroid/app/NotificationManager;
    :cond_3e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1051
    .local v0, "fillIn":Landroid/content/Intent;
    const-string v1, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1052
    iget v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mSessionId:I

    const-string v2, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1053
    nop

    .line 1054
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v1

    .line 1053
    const-string v2, "android.content.pm.extra.STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1055
    nop

    .line 1056
    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1057
    const-string v1, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1058
    if-eqz p4, :cond_7b

    .line 1059
    const-string v1, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1061
    .local v1, "existing":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 1062
    const-string v2, "android.content.pm.extra.OTHER_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    .end local v1  # "existing":Ljava/lang/String;
    :cond_7b
    :try_start_7b
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_86
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_7b .. :try_end_86} :catch_87

    .line 1068
    goto :goto_88

    .line 1067
    :catch_87
    move-exception v1

    .line 1069
    :goto_88
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"  # Landroid/content/Intent;

    .line 1020
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1021
    .local v0, "fillIn":Landroid/content/Intent;
    iget v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mSessionId:I

    const-string v2, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1022
    const-string v1, "android.content.pm.extra.STATUS"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1024
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1026
    :try_start_17
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_22
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_17 .. :try_end_22} :catch_23

    .line 1028
    goto :goto_24

    .line 1027
    :catch_23
    move-exception v1

    .line 1029
    :goto_24
    return-void
.end method
