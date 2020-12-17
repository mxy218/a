.class Lcom/android/server/notification/RankingControllerImpl$H;
.super Landroid/os/Handler;
.source "RankingControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/RankingControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/RankingControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/RankingControllerImpl;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/notification/RankingControllerImpl;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 107
    iput-object p1, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    .line 108
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/RankingControllerImpl;Landroid/os/Looper;Lcom/android/server/notification/RankingControllerImpl$1;)V
    .registers 4
    .param p1, "x0"  # Lcom/android/server/notification/RankingControllerImpl;
    .param p2, "x1"  # Landroid/os/Looper;
    .param p3, "x2"  # Lcom/android/server/notification/RankingControllerImpl$1;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingControllerImpl$H;-><init>(Lcom/android/server/notification/RankingControllerImpl;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"  # Landroid/os/Message;

    .line 113
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8f

    const/4 v3, 0x4

    if-eq v0, v3, :cond_48

    const/4 v3, 0x5

    if-eq v0, v3, :cond_38

    const/4 v1, 0x6

    if-eq v0, v1, :cond_28

    const/4 v1, 0x7

    if-eq v0, v1, :cond_16

    goto/16 :goto_9c

    .line 149
    :cond_16
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 151
    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/RankingControllerImpl;->access$700(Lcom/android/server/notification/RankingControllerImpl;Lcom/android/server/notification/NotificationRecord;I)Lmeizu/notification/RankingDaily;

    move-result-object v1

    .line 149
    invoke-static {v0, v3, v1}, Lcom/android/server/notification/RankingControllerImpl;->access$800(Lcom/android/server/notification/RankingControllerImpl;ILmeizu/notification/RankingDaily;)V

    goto/16 :goto_9c

    .line 142
    :cond_28
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 144
    invoke-static {v1, v3, v2}, Lcom/android/server/notification/RankingControllerImpl;->access$700(Lcom/android/server/notification/RankingControllerImpl;Lcom/android/server/notification/NotificationRecord;I)Lmeizu/notification/RankingDaily;

    move-result-object v1

    .line 142
    invoke-static {v0, v2, v1}, Lcom/android/server/notification/RankingControllerImpl;->access$800(Lcom/android/server/notification/RankingControllerImpl;ILmeizu/notification/RankingDaily;)V

    .line 147
    goto :goto_9c

    .line 135
    :cond_38
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 137
    invoke-static {v2, v3, v1}, Lcom/android/server/notification/RankingControllerImpl;->access$700(Lcom/android/server/notification/RankingControllerImpl;Lcom/android/server/notification/NotificationRecord;I)Lmeizu/notification/RankingDaily;

    move-result-object v2

    .line 135
    invoke-static {v0, v1, v2}, Lcom/android/server/notification/RankingControllerImpl;->access$800(Lcom/android/server/notification/RankingControllerImpl;ILmeizu/notification/RankingDaily;)V

    .line 140
    goto :goto_9c

    .line 115
    :cond_48
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v0}, Lcom/android/server/notification/RankingControllerImpl;->access$300(Lcom/android/server/notification/RankingControllerImpl;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0
    :try_end_4f
    .catchall {:try_start_0 .. :try_end_4f} :catchall_9d

    .line 116
    :try_start_4f
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v1}, Lcom/android/server/notification/RankingControllerImpl;->access$400(Lcom/android/server/notification/RankingControllerImpl;)Lcom/flyme/server/notfication/DatabaseHelper;

    move-result-object v1

    .line 117
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/flyme/server/notfication/DatabaseHelper;->queryDaily(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 118
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmeizu/notification/RankingDaily;

    .line 119
    .local v3, "RankingDaily":Lmeizu/notification/RankingDaily;
    iget-object v4, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v4}, Lcom/android/server/notification/RankingControllerImpl;->access$300(Lcom/android/server/notification/RankingControllerImpl;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    iget-object v6, v3, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    iget-object v7, v3, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/server/notification/RankingControllerImpl;->access$500(Lcom/android/server/notification/RankingControllerImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    nop

    .end local v3  # "RankingDaily":Lmeizu/notification/RankingDaily;
    goto :goto_5e

    .line 121
    :cond_7f
    invoke-static {}, Lcom/android/server/notification/RankingControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "load daily records complete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    nop

    .end local v1  # "list":Ljava/util/List;, "Ljava/util/List<Lmeizu/notification/RankingDaily;>;"
    monitor-exit v0

    .line 123
    goto :goto_9c

    .line 122
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_4f .. :try_end_8e} :catchall_8c

    .end local p0  # "this":Lcom/android/server/notification/RankingControllerImpl$H;
    .end local p1  # "msg":Landroid/os/Message;
    :try_start_8e
    throw v1

    .line 128
    .restart local p0  # "this":Lcom/android/server/notification/RankingControllerImpl$H;
    .restart local p1  # "msg":Landroid/os/Message;
    :cond_8f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmeizu/notification/RankingDaily;

    .line 129
    .local v0, "RankingDaily":Lmeizu/notification/RankingDaily;
    if-eqz v0, :cond_9c

    .line 130
    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl$H;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v2, v0, v1}, Lcom/android/server/notification/RankingControllerImpl;->access$600(Lcom/android/server/notification/RankingControllerImpl;Lmeizu/notification/RankingDaily;Z)V
    :try_end_9a
    .catchall {:try_start_8e .. :try_end_9a} :catchall_9d

    goto :goto_9c

    .line 126
    .end local v0  # "RankingDaily":Lmeizu/notification/RankingDaily;
    :cond_9b
    nop

    .line 158
    :cond_9c
    :goto_9c
    goto :goto_a7

    .line 156
    :catchall_9d
    move-exception v0

    .line 157
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/server/notification/RankingControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleMessage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v0  # "throwable":Ljava/lang/Throwable;
    :goto_a7
    return-void
.end method
