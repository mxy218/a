.class final Lcom/android/server/attention/AttentionManagerService$BinderService;
.super Landroid/os/Binder;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field mAttentionManagerServiceShellCommand:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;

.field final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .registers 4

    .line 824
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$BinderService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 825
    new-instance p1, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$BinderService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$1;)V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$BinderService;->mAttentionManagerServiceShellCommand:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$1;)V
    .registers 3

    .line 824
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$BinderService;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 839
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService$BinderService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->access$2300(Lcom/android/server/attention/AttentionManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "AttentionManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 840
    return-void

    .line 843
    :cond_f
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService$BinderService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    new-instance p3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/android/server/attention/AttentionManagerService;->access$2600(Lcom/android/server/attention/AttentionManagerService;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 844
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 833
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$BinderService;->mAttentionManagerServiceShellCommand:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 835
    return-void
.end method