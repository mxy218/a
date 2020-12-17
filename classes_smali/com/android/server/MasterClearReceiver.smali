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

.method static synthetic access$000(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;Z)Z
    .registers 7
    .param p0, "x0"  # Lcom/android/server/MasterClearReceiver;
    .param p1, "x1"  # Landroid/content/Context;
    .param p2, "x2"  # Landroid/content/Intent;
    .param p3, "x3"  # Z
    .param p4, "x4"  # Ljava/lang/String;
    .param p5, "x5"  # Z

    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/android/server/MasterClearReceiver;->handleFlymeMasterClear(Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/MasterClearReceiver;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/MasterClearReceiver;

    .line 39
    iget-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/MasterClearReceiver;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/MasterClearReceiver;

    .line 39
    iget-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    return v0
.end method

.method private handleFlymeMasterClear(Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;Z)Z
    .registers 14
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "shutdown"  # Z
    .param p4, "reason"  # Ljava/lang/String;
    .param p5, "forceWipe"  # Z

    .line 147
    const/4 v0, 0x0

    .line 150
    .local v0, "handled":Z
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flyme.intent.action.MZ_WIPE_SDCARD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 152
    invoke-static {p1}, Landroid/os/RecoverySystem;->rebootWipeSdcard(Landroid/content/Context;)V

    .line 153
    const/4 v0, 0x1

    goto/16 :goto_99

    .line 154
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flyme.intent.action.MZ_WIPE_ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 155
    const-string/jumbo v1, "wipe_sdcard"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 158
    .local v1, "wipeSdcard":Z
    nop

    .line 161
    invoke-static {p1}, Landroid/os/RecoverySystem;->rebootWipeAll(Landroid/content/Context;)V

    .line 163
    const/4 v0, 0x1

    .line 164
    .end local v1  # "wipeSdcard":Z
    goto :goto_99

    :cond_2d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "flyme.intent.action.MZ_DELETE_ALL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 165
    invoke-static {p1}, Landroid/os/RecoverySystem;->rebootSafelyDelete(Landroid/content/Context;)V

    .line 166
    const/4 v0, 0x1

    goto :goto_99

    .line 168
    :cond_3e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "flyme.intent.action.MZ_UPDATE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 169
    const-string/jumbo v1, "wipe_userdata"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 171
    .local v1, "clearData":Z
    const-string/jumbo v3, "wipe_storage"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 173
    .local v3, "clearStorage":Z
    const-string/jumbo v4, "upgrade_locate_filepath"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "filePath":Ljava/lang/String;
    const-string v5, "auto_upgrade"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 175
    .local v2, "autoUpgrade":Z
    const-string v5, "MasterClear"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Flyme will reboot to recovery and start flashing phone clearData = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " clearStorage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " filePath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " autoUpgrade = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {p1, v1, v3, v4, v2}, Landroid/os/RecoverySystem;->mzInstallPackage(Landroid/content/Context;ZZLjava/lang/String;Z)V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_96} :catch_9a

    .line 180
    const/4 v0, 0x1

    .line 182
    .end local v1  # "clearData":Z
    .end local v2  # "autoUpgrade":Z
    .end local v3  # "clearStorage":Z
    .end local v4  # "filePath":Ljava/lang/String;
    goto :goto_99

    .line 183
    :cond_98
    const/4 v0, 0x0

    .line 187
    :goto_99
    goto :goto_9e

    .line 185
    :catch_9a
    move-exception v1

    .line 186
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 189
    .end local v1  # "e":Ljava/io/IOException;
    :goto_9e
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 47
    const-string v0, "MasterClear"

    if-eqz p2, :cond_a5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    goto/16 :goto_a5

    .line 52
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 53
    const-string v1, "from"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 54
    const-string v1, "Ignoring master clear request -- not from trusted server."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 58
    :cond_2c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 59
    const-string v1, "The request uses the deprecated Intent#ACTION_MASTER_CLEAR, Intent#ACTION_FACTORY_RESET should be used instead."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_3d
    const-string v1, "android.intent.extra.FORCE_MASTER_CLEAR"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 63
    const-string v2, "The request uses the deprecated Intent#EXTRA_FORCE_MASTER_CLEAR, Intent#EXTRA_FORCE_FACTORY_RESET should be used instead."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_4a
    const/4 v2, 0x0

    const-string/jumbo v3, "shutdown"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 68
    .local v3, "shutdown":Z
    const-string v4, "android.intent.extra.REASON"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 69
    .local v12, "reason":Ljava/lang/String;
    const-string v4, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    .line 70
    const-string v4, "com.android.internal.intent.extra.WIPE_ESIMS"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    .line 71
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_79

    .line 72
    const-string v1, "android.intent.extra.FORCE_FACTORY_RESET"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_77

    goto :goto_79

    :cond_77
    move v11, v2

    goto :goto_7b

    :cond_79
    :goto_79
    const/4 v1, 0x1

    move v11, v1

    .line 74
    .local v11, "forceWipe":Z
    :goto_7b
    const-string v1, "!!! FACTORY RESET !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Lcom/android/server/MasterClearReceiver$1;

    const-string v6, "Reboot"

    move-object v4, v0

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    move v9, v3

    move-object v10, v12

    invoke-direct/range {v4 .. v11}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;Z)V

    .line 97
    .local v0, "thr":Ljava/lang/Thread;
    iget-boolean v1, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    if-nez v1, :cond_9a

    iget-boolean v1, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    if-eqz v1, :cond_96

    goto :goto_9a

    .line 101
    :cond_96
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_a4

    .line 99
    :cond_9a
    :goto_9a
    new-instance v1, Lcom/android/server/MasterClearReceiver$WipeDataTask;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/MasterClearReceiver$WipeDataTask;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/MasterClearReceiver$WipeDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    :goto_a4
    return-void

    .line 48
    .end local v0  # "thr":Ljava/lang/Thread;
    .end local v3  # "shutdown":Z
    .end local v11  # "forceWipe":Z
    .end local v12  # "reason":Ljava/lang/String;
    :cond_a5
    :goto_a5
    const-string/jumbo v1, "onReceive invalid action"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method
