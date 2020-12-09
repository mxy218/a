.class Lcom/android/server/dreams/DreamManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 119
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p1}, Lcom/android/server/dreams/DreamManagerService;->access$200(Lcom/android/server/dreams/DreamManagerService;)V

    .line 120
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p1}, Lcom/android/server/dreams/DreamManagerService;->access$300(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 121
    :try_start_c
    iget-object p2, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/dreams/DreamManagerService;->access$400(Lcom/android/server/dreams/DreamManagerService;Z)V

    .line 122
    monitor-exit p1

    .line 123
    return-void

    .line 122
    :catchall_14
    move-exception p2

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw p2
.end method
