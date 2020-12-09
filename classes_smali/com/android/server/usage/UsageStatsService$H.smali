.class Lcom/android/server/usage/UsageStatsService$H;
.super Landroid/os/Handler;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V
    .registers 3

    .line 871
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 872
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 873
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 877
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_8a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_84

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7c

    const/4 v3, 0x3

    if-eq v0, v3, :cond_20

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    .line 912
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_96

    .line 882
    :cond_15
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 883
    goto/16 :goto_96

    .line 893
    :cond_20
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 894
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 896
    const/4 v3, 0x0

    if-gt p1, v2, :cond_28

    move v1, v3

    .line 897
    :cond_28
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p1}, Lcom/android/server/usage/UsageStatsService;->access$600(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object v2

    monitor-enter v2

    .line 898
    :try_start_2f
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p1}, Lcom/android/server/usage/UsageStatsService;->access$600(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 899
    if-eq v1, p1, :cond_77

    .line 900
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p1}, Lcom/android/server/usage/UsageStatsService;->access$600(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_44
    .catchall {:try_start_2f .. :try_end_44} :catchall_79

    .line 902
    :try_start_44
    invoke-static {}, Lcom/android/server/usage/UsageStatsService;->access$700()Ljava/io/File;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_5f} :catch_60
    .catchall {:try_start_44 .. :try_end_5f} :catchall_79

    .line 905
    goto :goto_77

    .line 903
    :catch_60
    move-exception p1

    .line 904
    :try_start_61
    const-string v0, "UsageStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update counter set: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_77
    :goto_77
    monitor-exit v2

    .line 908
    goto :goto_96

    .line 907
    :catchall_79
    move-exception p1

    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_61 .. :try_end_7b} :catchall_79

    throw p1

    .line 889
    :cond_7c
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->onUserRemoved(I)V

    .line 890
    goto :goto_96

    .line 885
    :cond_84
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p1}, Lcom/android/server/usage/UsageStatsService;->flushToDisk()V

    .line 886
    goto :goto_96

    .line 879
    :cond_8a
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    .line 880
    nop

    .line 915
    :goto_96
    return-void
.end method
