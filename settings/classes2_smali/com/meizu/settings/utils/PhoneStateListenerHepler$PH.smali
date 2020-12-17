.class Lcom/meizu/settings/utils/PhoneStateListenerHepler$PH;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStateListenerHepler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/utils/PhoneStateListenerHepler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PH"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/utils/PhoneStateListenerHepler;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/utils/PhoneStateListenerHepler;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler$PH;->this$0:Lcom/meizu/settings/utils/PhoneStateListenerHepler;

    .line 124
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 5

    .line 129
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler$PH;->this$0:Lcom/meizu/settings/utils/PhoneStateListenerHepler;

    invoke-static {p1}, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->access$200(Lcom/meizu/settings/utils/PhoneStateListenerHepler;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    .line 134
    :try_start_2c
    iget-object p2, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler$PH;->this$0:Lcom/meizu/settings/utils/PhoneStateListenerHepler;

    invoke-virtual {p2}, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->isPhoneStateIdle()Z

    move-result p2

    .line 135
    iget-object p0, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler$PH;->this$0:Lcom/meizu/settings/utils/PhoneStateListenerHepler;

    invoke-static {p0}, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->access$200(Lcom/meizu/settings/utils/PhoneStateListenerHepler;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/utils/PhoneStateListenerHepler$OnCallStateChangeListener;

    .line 136
    invoke-interface {v0, p2}, Lcom/meizu/settings/utils/PhoneStateListenerHepler$OnCallStateChangeListener;->onCallStateChange(Z)V

    goto :goto_3c

    .line 138
    :cond_4c
    monitor-exit p1

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit p1
    :try_end_50
    .catchall {:try_start_2c .. :try_end_50} :catchall_4e

    throw p0
.end method
