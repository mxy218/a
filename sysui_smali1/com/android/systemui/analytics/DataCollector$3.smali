.class Lcom/android/systemui/analytics/DataCollector$3;
.super Ljava/lang/Object;
.source "DataCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/analytics/DataCollector;->queueSession(Lcom/android/systemui/analytics/SensorLoggerSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/analytics/DataCollector;

.field final synthetic val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;


# direct methods
.method constructor <init>(Lcom/android/systemui/analytics/DataCollector;Lcom/android/systemui/analytics/SensorLoggerSession;)V
    .registers 3

    .line 209
    iput-object p1, p0, Lcom/android/systemui/analytics/DataCollector$3;->this$0:Lcom/android/systemui/analytics/DataCollector;

    iput-object p2, p0, Lcom/android/systemui/analytics/DataCollector$3;->val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 212
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector$3;->val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/SensorLoggerSession;->toProto()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/android/systemui/analytics/DataCollector$3;->this$0:Lcom/android/systemui/analytics/DataCollector;

    invoke-static {v1}, Lcom/android/systemui/analytics/DataCollector;->access$100(Lcom/android/systemui/analytics/DataCollector;)Lcom/android/systemui/plugins/FalsingPlugin;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    .line 215
    iget-object v1, p0, Lcom/android/systemui/analytics/DataCollector$3;->this$0:Lcom/android/systemui/analytics/DataCollector;

    invoke-static {v1}, Lcom/android/systemui/analytics/DataCollector;->access$100(Lcom/android/systemui/analytics/DataCollector;)Lcom/android/systemui/plugins/FalsingPlugin;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector$3;->val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/SensorLoggerSession;->getResult()I

    move-result p0

    if-ne p0, v2, :cond_22

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    invoke-interface {v1, v2, v0}, Lcom/android/systemui/plugins/FalsingPlugin;->dataCollected(Z[B)V

    goto/16 :goto_a5

    .line 217
    :cond_28
    iget-object v1, p0, Lcom/android/systemui/analytics/DataCollector$3;->this$0:Lcom/android/systemui/analytics/DataCollector;

    invoke-static {v1}, Lcom/android/systemui/analytics/DataCollector;->access$200(Lcom/android/systemui/analytics/DataCollector;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 218
    iget-object v3, p0, Lcom/android/systemui/analytics/DataCollector$3;->val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {v3}, Lcom/android/systemui/analytics/SensorLoggerSession;->getResult()I

    move-result v3

    if-eq v3, v2, :cond_61

    .line 219
    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector$3;->this$0:Lcom/android/systemui/analytics/DataCollector;

    invoke-static {v2}, Lcom/android/systemui/analytics/DataCollector;->access$300(Lcom/android/systemui/analytics/DataCollector;)Z

    move-result v2

    if-nez v2, :cond_4f

    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector$3;->this$0:Lcom/android/systemui/analytics/DataCollector;

    invoke-static {p0}, Lcom/android/systemui/analytics/DataCollector;->access$400(Lcom/android/systemui/analytics/DataCollector;)Z

    move-result p0

    if-nez p0, :cond_4f

    return-void

    .line 222
    :cond_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bad_touches"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7a

    .line 223
    :cond_61
    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector$3;->this$0:Lcom/android/systemui/analytics/DataCollector;

    invoke-static {p0}, Lcom/android/systemui/analytics/DataCollector;->access$300(Lcom/android/systemui/analytics/DataCollector;)Z

    move-result p0

    if-nez p0, :cond_7a

    .line 224
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/good_touches"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    :cond_7a
    :goto_7a
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 229
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trace_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    :try_start_9d
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a5} :catch_a6

    :goto_a5
    return-void

    :catch_a6
    move-exception p0

    .line 233
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
