.class Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 887
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "state"  # I
    .param p2, "arg1"  # Ljava/lang/String;

    .line 891
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$000(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 892
    :try_start_7
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    const/4 v2, 0x2

    if-ne v2, p1, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    invoke-static {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$100(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V

    .line 893
    monitor-exit v0

    .line 894
    return-void

    .line 893
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method
