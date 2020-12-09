.class public Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MasterClearReceiver$WipeDataTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClear"


# instance fields
.field private mWipeEsims:Z

.field private mWipeExternalStorage:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MasterClearReceiver;)Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/MasterClearReceiver;)Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MasterClear"

    if-eqz v0, :cond_22

    .line 47
    const-string v0, "from"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "google.com"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 48
    const-string p1, "Ignoring master clear request -- not from trusted server."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 52
    :cond_22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 53
    const-string v0, "The request uses the deprecated Intent#ACTION_MASTER_CLEAR, Intent#ACTION_FACTORY_RESET should be used instead."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_33
    const-string v0, "android.intent.extra.FORCE_MASTER_CLEAR"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 57
    const-string v2, "The request uses the deprecated Intent#EXTRA_FORCE_MASTER_CLEAR, Intent#EXTRA_FORCE_FACTORY_RESET should be used instead."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_40
    const/4 v2, 0x0

    const-string/jumbo v3, "shutdown"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 62
    const-string v3, "android.intent.extra.REASON"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 63
    const-string v3, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    .line 64
    const-string v3, "com.android.internal.intent.extra.WIPE_ESIMS"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    .line 65
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 66
    const-string v0, "android.intent.extra.FORCE_FACTORY_RESET"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_6d

    goto :goto_6f

    :cond_6d
    move v10, v2

    goto :goto_71

    :cond_6f
    :goto_6f
    const/4 p2, 0x1

    move v10, p2

    .line 68
    :goto_71
    const-string p2, "!!! FACTORY RESET !!!"

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance p2, Lcom/android/server/MasterClearReceiver$1;

    const-string v6, "Reboot"

    move-object v4, p2

    move-object v5, p0

    move-object v7, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;Z)V

    .line 85
    iget-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    if-eqz v0, :cond_8f

    .line 87
    new-instance v0, Lcom/android/server/MasterClearReceiver$WipeDataTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/MasterClearReceiver$WipeDataTask;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V

    new-array p1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/android/server/MasterClearReceiver$WipeDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_92

    .line 89
    :cond_8f
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 91
    :goto_92
    return-void
.end method
