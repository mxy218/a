.class Lcom/android/server/am/ActivityManagerService$MemBinder$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService$MemBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$MemBinder;)V
    .registers 2

    .line 2128
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 14

    .line 2137
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$MemBinder;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "  "

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerService;->dumpApplicationMemoryUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;ZLjava/io/PrintWriter;Z)V

    .line 2139
    return-void
.end method

.method public dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5

    .line 2132
    const-string p3, "-a"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService$MemBinder$1;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 2133
    return-void
.end method
