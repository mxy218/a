.class final Lcom/android/server/AlarmManagerService$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UidObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .line 4408
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UidObserver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2

    .line 4419
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    .line 4428
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 3

    .line 4413
    if-eqz p2, :cond_9

    .line 4414
    iget-object p2, p0, Lcom/android/server/AlarmManagerService$UidObserver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p2, p2, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {p2, p1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->postRemoveForStopped(I)V

    .line 4416
    :cond_9
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3

    .line 4422
    if-eqz p2, :cond_9

    .line 4423
    iget-object p2, p0, Lcom/android/server/AlarmManagerService$UidObserver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p2, p2, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {p2, p1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->postRemoveForStopped(I)V

    .line 4425
    :cond_9
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 5

    .line 4410
    return-void
.end method
