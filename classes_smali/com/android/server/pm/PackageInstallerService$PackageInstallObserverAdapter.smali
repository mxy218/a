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

    .line 1013
    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    .line 1014
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    .line 1015
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mTarget:Landroid/content/IntentSender;

    .line 1016
    iput p3, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mSessionId:I

    .line 1017
    iput-boolean p4, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mShowNotification:Z

    .line 1018
    iput p5, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mUserId:I

    .line 1019
    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 14

    .line 1037
    const/4 v0, 0x1

    if-ne v0, p2, :cond_3e

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mShowNotification:Z

    if-eqz v1, :cond_3e

    .line 1038
    if-eqz p4, :cond_12

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1039
    :goto_13
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    .line 1040
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1041
    if-eqz v0, :cond_1f

    const v0, 0x10404a1

    goto :goto_22

    .line 1042
    :cond_1f
    const v0, 0x10404a0

    .line 1041
    :goto_22
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mUserId:I

    .line 1039
    invoke-static {v1, v0, p1, v2}, Lcom/android/server/pm/PackageInstallerService;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    .line 1045
    if-eqz v0, :cond_3e

    .line 1046
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    .line 1047
    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1048
    const/16 v2, 0x15

    invoke-virtual {v1, p1, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1053
    :cond_3e
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1054
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    iget p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mSessionId:I

    const-string v0, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1056
    nop

    .line 1057
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result p1

    .line 1056
    const-string v0, "android.content.pm.extra.STATUS"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1058
    nop

    .line 1059
    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1058
    const-string p3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v6, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1060
    const-string p1, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1061
    if-eqz p4, :cond_7b

    .line 1062
    const-string p1, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1064
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7b

    .line 1065
    const-string p2, "android.content.pm.extra.OTHER_PACKAGE_NAME"

    invoke-virtual {v6, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    :cond_7b
    :try_start_7b
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_85
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_7b .. :try_end_85} :catch_86

    .line 1071
    goto :goto_87

    .line 1070
    :catch_86
    move-exception p1

    .line 1072
    :goto_87
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 8

    .line 1023
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1024
    iget v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mSessionId:I

    const-string v1, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1025
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1027
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1029
    :try_start_17
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_21
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_17 .. :try_end_21} :catch_22

    .line 1031
    goto :goto_23

    .line 1030
    :catch_22
    move-exception p1

    .line 1032
    :goto_23
    return-void
.end method
