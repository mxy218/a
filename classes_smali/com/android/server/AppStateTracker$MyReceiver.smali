.class final Lcom/android/server/AppStateTracker$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/AppStateTracker;)V
    .registers 2

    .line 678
    iput-object p1, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V
    .registers 3

    .line 678
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$MyReceiver;-><init>(Lcom/android/server/AppStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 681
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 682
    const/4 p1, -0x1

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 683
    if-lez p1, :cond_4b

    .line 684
    iget-object p2, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p2}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/AppStateTracker$MyHandler;->doUserRemoved(I)V

    goto :goto_4b

    .line 686
    :cond_1f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 687
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 688
    :try_start_32
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    const-string/jumbo v1, "plugged"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_3f

    const/4 v2, 0x1

    :cond_3f
    iput-boolean v2, v0, Lcom/android/server/AppStateTracker;->mIsPluggedIn:Z

    .line 689
    monitor-exit p1
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_48

    .line 690
    iget-object p1, p0, Lcom/android/server/AppStateTracker$MyReceiver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$300(Lcom/android/server/AppStateTracker;)V

    goto :goto_4c

    .line 689
    :catchall_48
    move-exception p2

    :try_start_49
    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p2

    .line 686
    :cond_4b
    :goto_4b
    nop

    .line 692
    :goto_4c
    return-void
.end method
