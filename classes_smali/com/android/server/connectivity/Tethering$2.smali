.class Lcom/android/server/connectivity/Tethering$2;
.super Landroid/database/ContentObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->startStateMachineUpdaters(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;)V
    .registers 3

    .line 312
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 316
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object p1

    const v0, 0x50003

    invoke-virtual {p1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 317
    return-void
.end method
