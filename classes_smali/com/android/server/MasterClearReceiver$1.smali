.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$forceWipe:Z

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$shutdown:Z


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;Z)V
    .registers 7

    .line 70
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iput-object p5, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/MasterClearReceiver$1;->val$forceWipe:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 74
    const-string v0, "Can\'t perform master clear/factory reset"

    const-string v1, "MasterClear"

    :try_start_4
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iget-object v4, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/server/MasterClearReceiver$1;->val$forceWipe:Z

    iget-object v6, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    .line 75
    invoke-static {v6}, Lcom/android/server/MasterClearReceiver;->access$000(Lcom/android/server/MasterClearReceiver;)Z

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 76
    const-string v2, "Still running after master clear?!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1a} :catch_20
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_1a} :catch_1b

    goto :goto_24

    .line 79
    :catch_1b
    move-exception v2

    .line 80
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 77
    :catch_20
    move-exception v2

    .line 78
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :goto_24
    nop

    .line 82
    :goto_25
    return-void
.end method
