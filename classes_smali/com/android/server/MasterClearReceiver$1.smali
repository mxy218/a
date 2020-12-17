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

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$shutdown:Z


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;Z)V
    .registers 8
    .param p1, "this$0"  # Lcom/android/server/MasterClearReceiver;
    .param p2, "x0"  # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    iput-boolean p5, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iput-object p6, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/server/MasterClearReceiver$1;->val$forceWipe:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 81
    const-string v0, "Can\'t perform master clear/factory reset"

    const-string v1, "MasterClear"

    :try_start_4
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    iget-boolean v5, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iget-object v6, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$forceWipe:Z

    invoke-static/range {v2 .. v7}, Lcom/android/server/MasterClearReceiver;->access$000(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_27

    .line 82
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iget-object v4, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/server/MasterClearReceiver$1;->val$forceWipe:Z

    iget-object v6, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    .line 83
    invoke-static {v6}, Lcom/android/server/MasterClearReceiver;->access$100(Lcom/android/server/MasterClearReceiver;)Z

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 88
    :cond_27
    const-string v2, "Still running after master clear?!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2c} :catch_32
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_2c} :catch_2d

    goto :goto_36

    .line 91
    :catch_2d
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 89
    .end local v2  # "e":Ljava/lang/SecurityException;
    :catch_32
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v2  # "e":Ljava/io/IOException;
    :goto_36
    nop

    .line 94
    :goto_37
    return-void
.end method
