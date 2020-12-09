.class Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;
.super Landroid/database/ContentObserver;
.source "BatterySaverStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;Landroid/os/Handler;)V
    .registers 3

    .line 228
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 231
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->access$000(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 232
    :try_start_7
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->access$100(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    .line 233
    monitor-exit p1

    .line 234
    return-void

    .line 233
    :catchall_e
    move-exception v0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method
