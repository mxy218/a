.class Lcom/android/server/security/TRPEngService$AppRemoveBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TRPEngService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/TRPEngService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppRemoveBroadcastReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 948
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/security/TRPEngService$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/android/server/security/TRPEngService$1;

    .line 948
    invoke-direct {p0}, Lcom/android/server/security/TRPEngService$AppRemoveBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 951
    invoke-static {}, Lcom/android/server/security/TRPEngService;->access$700()Z

    move-result v0

    if-eqz v0, :cond_67

    if-eqz p2, :cond_67

    invoke-static {}, Lcom/android/server/security/TRPEngService;->access$800()Lcom/android/server/security/TrpVectorManager;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_67

    .line 954
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 958
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 960
    :cond_23
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 963
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/security/TRPEngService;->access$800()Lcom/android/server/security/TrpVectorManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/security/TrpVectorManager;->isMonitored(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 966
    invoke-static {}, Lcom/android/server/security/TRPEngService;->access$800()Lcom/android/server/security/TrpVectorManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/security/TrpVectorManager;->removePackageFromMonitor(Ljava/lang/String;I)V

    .line 969
    invoke-static {}, Lcom/android/server/security/TRPEngService;->access$900()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_66

    .line 970
    invoke-static {}, Lcom/android/server/security/TRPEngService;->access$1000()Lcom/android/server/security/NameListManager;

    move-result-object v2

    invoke-static {}, Lcom/android/server/security/TRPEngService;->access$900()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/security/NameListManager;->remove(Ljava/lang/String;I)V

    .line 974
    .end local v1  # "packageName":Ljava/lang/String;
    :cond_66
    return-void

    .line 952
    .end local v0  # "action":Ljava/lang/String;
    :cond_67
    :goto_67
    return-void
.end method
