.class Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;
.super Ljava/lang/Thread;
.source "ConfigUpdateInstallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/updates/ConfigUpdateInstallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 60
    iput-object p1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iput-object p2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 65
    const-string v0, "ConfigUpdateInstallReceiver"

    const v1, 0xc864

    :try_start_5
    iget-object v2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v2, v3, v4}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$000(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)[B

    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v3, v4}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$100(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)I

    move-result v3

    .line 69
    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v5, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$200(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 71
    iget-object v5, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v5}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$300(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)I

    move-result v5

    .line 73
    iget-object v6, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v6}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$400(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$500([B)Ljava/lang/String;

    move-result-object v6

    .line 74
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-virtual {v7, v5, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifyVersion(II)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 75
    const-string v2, "Not installing, new version is <= current version"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 76
    :cond_3d
    iget-object v5, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v5, v6, v4}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$600(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 77
    const-string v2, "Current hash did not match required value"

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    goto :goto_63

    .line 81
    :cond_4b
    const-string v4, "Found new update, installing..."

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->install([BI)V

    .line 83
    const-string v2, "Installation successful"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_63} :catch_64

    .line 94
    :goto_63
    goto :goto_80

    .line 86
    :catch_64
    move-exception v2

    .line 87
    const-string v3, "Could not update content!"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_7d

    .line 91
    const/4 v2, 0x0

    const/16 v3, 0x63

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_7d
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 95
    :goto_80
    return-void
.end method
