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
    .param p1, "this$0"  # Lcom/android/server/TelephonyRegistry;

    .line 288
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"  # Landroid/os/Message;

    .line 291
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_be

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto/16 :goto_f4

    .line 302
    :cond_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 303
    .local v0, "newDefaultPhoneId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 304
    .local v1, "newDefaultSubId":I
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->access$000()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_UPDATE_DEFAULT_SUB:current mDefaultSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->access$300(Lcom/android/server/TelephonyRegistry;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " current mDefaultPhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 306
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->access$400(Lcom/android/server/TelephonyRegistry;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newDefaultSubId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newDefaultPhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->access$100(Ljava/lang/String;)V

    .line 313
    :cond_52
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->access$500(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 314
    :try_start_59
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->access$500(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 315
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_7b

    .line 316
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v5, v4, v0}, Lcom/android/server/TelephonyRegistry;->access$600(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V

    .line 318
    .end local v4  # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_7b
    goto :goto_63

    .line 319
    :cond_7c
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->access$700(Lcom/android/server/TelephonyRegistry;)V

    .line 320
    monitor-exit v2
    :try_end_82
    .catchall {:try_start_59 .. :try_end_82} :catchall_bb

    .line 321
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2, v1}, Lcom/android/server/TelephonyRegistry;->access$302(Lcom/android/server/TelephonyRegistry;I)I

    .line 322
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry;->access$402(Lcom/android/server/TelephonyRegistry;I)I

    .line 323
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->access$800(Lcom/android/server/TelephonyRegistry;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default subscription updated: mDefaultPhoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 324
    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->access$400(Lcom/android/server/TelephonyRegistry;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDefaultSubId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->access$300(Lcom/android/server/TelephonyRegistry;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_f4

    .line 320
    :catchall_bb
    move-exception v3

    :try_start_bc
    monitor-exit v2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v3

    .line 293
    .end local v0  # "newDefaultPhoneId":I
    .end local v1  # "newDefaultSubId":I
    :cond_be
    invoke-static {}, Lcom/android/server/TelephonyRegistry;->access$000()Z

    move-result v0

    if-eqz v0, :cond_da

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_USER_SWITCHED userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$100(Ljava/lang/String;)V

    .line 294
    :cond_da
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 295
    .local v0, "numPhones":I
    const/4 v1, 0x0

    .local v1, "sub":I
    :goto_e3
    if-ge v1, v0, :cond_f3

    .line 296
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 297
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->access$200(Lcom/android/server/TelephonyRegistry;)[Landroid/os/Bundle;

    move-result-object v3

    aget-object v3, v3, v1

    .line 296
    invoke-virtual {v2, v1, v3}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_e3

    .line 299
    .end local v1  # "sub":I
    :cond_f3
    nop

    .line 327
    .end local v0  # "numPhones":I
    :goto_f4
    return-void
.end method
