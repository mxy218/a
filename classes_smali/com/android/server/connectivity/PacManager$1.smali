.class Lcom/android/server/connectivity/PacManager$1;
.super Ljava/lang/Object;
.source "PacManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PacManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 113
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->access$000(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;

    move-result-object v0

    .line 114
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    .line 115
    :cond_f
    const/16 v1, -0xbb

    invoke-static {v1}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v1

    .line 118
    :try_start_15
    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->access$100(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_1f
    .catchall {:try_start_15 .. :try_end_19} :catchall_1d

    .line 123
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 124
    goto :goto_3b

    .line 123
    :catchall_1d
    move-exception v0

    goto :goto_70

    .line 119
    :catch_1f
    move-exception v0

    .line 120
    const/4 v2, 0x0

    .line 121
    :try_start_21
    const-string v3, "PacManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load PAC file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_1d

    .line 123
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 124
    move-object v0, v2

    .line 125
    :goto_3b
    if-eqz v0, :cond_6a

    .line 126
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v1}, Lcom/android/server/connectivity/PacManager;->access$200(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 127
    :try_start_44
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->access$300(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 128
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v2, v0}, Lcom/android/server/connectivity/PacManager;->access$400(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)V

    .line 130
    :cond_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_44 .. :try_end_56} :catchall_67

    .line 131
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/PacManager;->access$502(Lcom/android/server/connectivity/PacManager;Z)Z

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->access$600(Lcom/android/server/connectivity/PacManager;)V

    .line 133
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->access$700(Lcom/android/server/connectivity/PacManager;)V

    goto :goto_6f

    .line 130
    :catchall_67
    move-exception v0

    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v0

    .line 135
    :cond_6a
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->access$800(Lcom/android/server/connectivity/PacManager;)V

    .line 137
    :goto_6f
    return-void

    .line 123
    :goto_70
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0
.end method
