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
    .param p1, "this$0"  # Lcom/android/server/usage/UsageStatsService;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 1129
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1130
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1131
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"  # Landroid/os/Message;

    .line 1135
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_c0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_ba

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_56

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4b

    .line 1171
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1172
    .local v0, "eventType":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1173
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->access$1100(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->access$300(Lcom/android/server/usage/UsageStatsService;)Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->access$1200(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    .line 1174
    :cond_38
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2, v1}, Lcom/android/server/usage/UsageStatsService;->access$1102(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;

    .line 1175
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    const-string v3, "com.meizu.flyme.launcher"

    invoke-static {v2, v3}, Lcom/android/server/usage/UsageStatsService;->access$1302(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;

    .line 1176
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/usage/UsageStatsService;->informAppStatusListeners(Ljava/lang/String;I)V

    goto/16 :goto_cc

    .line 1140
    .end local v0  # "eventType":I
    .end local v1  # "packageName":Ljava/lang/String;
    :cond_4b
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 1141
    goto/16 :goto_cc

    .line 1151
    :cond_56
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1152
    .local v0, "uid":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 1154
    .local v3, "procState":I
    const/4 v4, 0x0

    if-gt v3, v2, :cond_5e

    move v1, v4

    .line 1155
    .local v1, "newCounter":I
    :cond_5e
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->access$900(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object v2

    monitor-enter v2

    .line 1156
    :try_start_65
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v5}, Lcom/android/server/usage/UsageStatsService;->access$900(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 1157
    .local v4, "oldCounter":I
    if-eq v1, v4, :cond_ad

    .line 1158
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v5}, Lcom/android/server/usage/UsageStatsService;->access$900(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_7a
    .catchall {:try_start_65 .. :try_end_7a} :catchall_af

    .line 1160
    :try_start_7a
    invoke-static {}, Lcom/android/server/usage/UsageStatsService;->access$1000()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_95} :catch_96
    .catchall {:try_start_7a .. :try_end_95} :catchall_af

    .line 1163
    goto :goto_ad

    .line 1161
    :catch_96
    move-exception v5

    .line 1162
    .local v5, "e":Ljava/io/IOException;
    :try_start_97
    const-string v6, "UsageStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update counter set: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    .end local v4  # "oldCounter":I
    .end local v5  # "e":Ljava/io/IOException;
    :cond_ad
    :goto_ad
    monitor-exit v2

    .line 1166
    goto :goto_cc

    .line 1165
    :catchall_af
    move-exception v4

    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_97 .. :try_end_b1} :catchall_af

    throw v4

    .line 1147
    .end local v0  # "uid":I
    .end local v1  # "newCounter":I
    .end local v3  # "procState":I
    :cond_b2
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService;->onUserRemoved(I)V

    .line 1148
    goto :goto_cc

    .line 1143
    :cond_ba
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->flushToDisk()V

    .line 1144
    goto :goto_cc

    .line 1137
    :cond_c0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    .line 1138
    nop

    .line 1181
    :cond_cc
    :goto_cc
    return-void
.end method
