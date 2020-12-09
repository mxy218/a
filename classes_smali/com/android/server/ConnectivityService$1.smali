.class Lcom/android/server/ConnectivityService$1;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    .line 829
    iput-object p1, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 6

    .line 843
    iget-object v0, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 844
    return-void
.end method

.method public dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 6

    .line 832
    iget-object p3, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    const-string v0, "--diag"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p1, p2, v0, p4}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 833
    iget-object p3, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    const-string v0, "--short"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p1, p2, v0, p4}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 834
    return-void
.end method

.method public dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 6

    .line 838
    iget-object v0, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 839
    return-void
.end method
