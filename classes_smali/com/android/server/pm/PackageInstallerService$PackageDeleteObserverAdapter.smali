.class Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
.super Landroid/app/PackageDeleteObserver;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageDeleteObserverAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotification:Landroid/app/Notification;

.field private final mPackageName:Ljava/lang/String;

.field private final mTarget:Landroid/content/IntentSender;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V
    .registers 6

    .line 949
    invoke-direct {p0}, Landroid/app/PackageDeleteObserver;-><init>()V

    .line 950
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    .line 951
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    .line 952
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    .line 953
    if-eqz p4, :cond_1f

    .line 954
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    .line 955
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x104049f

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 954
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/pm/PackageInstallerService;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    goto :goto_22

    .line 959
    :cond_1f
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    .line 961
    :goto_22
    return-void
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    .line 981
    const/4 v0, 0x1

    if-ne v0, p2, :cond_19

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_19

    .line 982
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    .line 983
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 984
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 988
    :cond_19
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    if-nez p1, :cond_1e

    .line 989
    return-void

    .line 991
    :cond_1e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 992
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 993
    nop

    .line 994
    invoke-static {p2}, Landroid/content/pm/PackageManager;->deleteStatusToPublicStatus(I)I

    move-result p1

    .line 993
    const-string v0, "android.content.pm.extra.STATUS"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 995
    nop

    .line 996
    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->deleteStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 995
    const-string p3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v3, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 997
    const-string p1, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 999
    :try_start_43
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_4d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_43 .. :try_end_4d} :catch_4e

    .line 1001
    goto :goto_4f

    .line 1000
    :catch_4e
    move-exception p1

    .line 1002
    :goto_4f
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 9

    .line 965
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    if-nez v0, :cond_5

    .line 966
    return-void

    .line 968
    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 969
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    const-string v1, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    const/4 v0, -0x1

    const-string v1, "android.content.pm.extra.STATUS"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 972
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 974
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_26
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1c .. :try_end_26} :catch_27

    .line 976
    goto :goto_28

    .line 975
    :catch_27
    move-exception p1

    .line 977
    :goto_28
    return-void
.end method
