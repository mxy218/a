.class Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildStatusIntentReceiver"
.end annotation


# instance fields
.field private final mChildSessionsRemaining:Landroid/util/SparseIntArray;

.field private final mLocalSender:Landroid/content/IIntentSender$Stub;

.field private final mStatusReceiver:Landroid/content/IntentSender;

.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseIntArray;Landroid/content/IntentSender;)V
    .registers 4
    .param p2, "remainingSessions"  # Landroid/util/SparseIntArray;
    .param p3, "statusReceiver"  # Landroid/content/IntentSender;

    .line 948
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    new-instance p1, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver$1;-><init>(Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    .line 949
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    .line 950
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mStatusReceiver:Landroid/content/IntentSender;

    .line 951
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseIntArray;Landroid/content/IntentSender;Lcom/android/server/pm/PackageInstallerSession$1;)V
    .registers 5
    .param p1, "x0"  # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "x1"  # Landroid/util/SparseIntArray;
    .param p3, "x2"  # Landroid/content/IntentSender;
    .param p4, "x3"  # Lcom/android/server/pm/PackageInstallerSession$1;

    .line 936
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseIntArray;Landroid/content/IntentSender;)V

    return-void
.end method


# virtual methods
.method public getIntentSender()Landroid/content/IntentSender;
    .registers 3

    .line 954
    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public synthetic lambda$statusUpdate$0$PackageInstallerSession$ChildStatusIntentReceiver(Landroid/content/Intent;)V
    .registers 13
    .param p1, "intent"  # Landroid/content/Intent;

    .line 959
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 960
    return-void

    .line 962
    :cond_9
    const/4 v0, 0x0

    const-string v1, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 964
    .local v0, "sessionId":I
    const/4 v2, 0x1

    const-string v3, "android.content.pm.extra.STATUS"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 966
    .local v2, "status":I
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 967
    .local v3, "sessionIndex":I
    if-nez v2, :cond_45

    .line 968
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 969
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-nez v4, :cond_77

    .line 971
    :try_start_2c
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v4, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 973
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mStatusReceiver:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$300(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_42
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_2c .. :try_end_42} :catch_43

    goto :goto_44

    .line 974
    :catch_43
    move-exception v1

    .line 975
    :goto_44
    goto :goto_77

    .line 977
    :cond_45
    const/4 v4, -0x1

    if-ne v4, v2, :cond_5a

    .line 979
    :try_start_48
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mStatusReceiver:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$300(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_57
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_48 .. :try_end_57} :catch_58

    goto :goto_59

    .line 980
    :catch_58
    move-exception v1

    .line 981
    :goto_59
    goto :goto_77

    .line 983
    :cond_5a
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v4, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 985
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 987
    :try_start_66
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mStatusReceiver:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$300(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_75
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_66 .. :try_end_75} :catch_76

    .line 989
    goto :goto_77

    .line 988
    :catch_76
    move-exception v1

    .line 991
    :cond_77
    :goto_77
    return-void
.end method

.method public statusUpdate(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"  # Landroid/content/Intent;

    .line 958
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$200(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$ChildStatusIntentReceiver$CIWymiEKCzNknV3an6tFtcz5-Mc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$ChildStatusIntentReceiver$CIWymiEKCzNknV3an6tFtcz5-Mc;-><init>(Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 992
    return-void
.end method
