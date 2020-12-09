.class Lcom/android/server/TelephonyRegistry$1;
.super Landroid/os/Handler;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 277
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_80

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto/16 :goto_9a

    .line 288
    :cond_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 289
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 299
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->access$100(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 300
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->access$100(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 301
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_3d

    .line 302
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4, v3, v0}, Lcom/android/server/TelephonyRegistry;->access$200(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V

    .line 304
    :cond_3d
    goto :goto_25

    .line 305
    :cond_3e
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->access$300(Lcom/android/server/TelephonyRegistry;)V

    .line 306
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_1b .. :try_end_44} :catchall_7d

    .line 307
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v1, p1}, Lcom/android/server/TelephonyRegistry;->access$402(Lcom/android/server/TelephonyRegistry;I)I

    .line 308
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {p1, v0}, Lcom/android/server/TelephonyRegistry;->access$502(Lcom/android/server/TelephonyRegistry;I)I

    .line 309
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {p1}, Lcom/android/server/TelephonyRegistry;->access$600(Lcom/android/server/TelephonyRegistry;)Landroid/util/LocalLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default subscription updated: mDefaultPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 310
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->access$500(Lcom/android/server/TelephonyRegistry;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultSubId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->access$400(Lcom/android/server/TelephonyRegistry;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_9a

    .line 306
    :catchall_7d
    move-exception p1

    :try_start_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw p1

    .line 280
    :cond_80
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    .line 281
    const/4 v0, 0x0

    :goto_89
    if-ge v0, p1, :cond_99

    .line 282
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 283
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->access$000(Lcom/android/server/TelephonyRegistry;)[Landroid/os/Bundle;

    move-result-object v2

    aget-object v2, v2, v0

    .line 282
    invoke-virtual {v1, v0, v2}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 285
    :cond_99
    nop

    .line 313
    :goto_9a
    return-void
.end method
