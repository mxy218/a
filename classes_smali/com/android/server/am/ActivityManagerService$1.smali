.class Lcom/android/server/am/ActivityManagerService$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 630
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$1;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 6

    .line 646
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$1;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 647
    return-void
.end method

.method public dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 7

    .line 634
    if-eqz p4, :cond_3

    return-void

    .line 635
    :cond_3
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerService$1;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v0, "activities"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p1, p2, v0, p4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 636
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerService$1;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v0, "service"

    const-string v1, "all-platform-critical"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p1, p2, v0, p4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 637
    return-void
.end method

.method public dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 7

    .line 641
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerService$1;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v0, "-a"

    const-string v1, "--normal-priority"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p1, p2, v0, p4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 642
    return-void
.end method
