.class final Lcom/android/server/AppStateTracker$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UidObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/AppStateTracker;)V
    .registers 2

    .line 634
    iput-object p1, p0, Lcom/android/server/AppStateTracker$UidObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V
    .registers 3

    .line 634
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$UidObserver;-><init>(Lcom/android/server/AppStateTracker;)V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 3

    .line 642
    iget-object v0, p0, Lcom/android/server/AppStateTracker$UidObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTracker$MyHandler;->onUidActive(I)V

    .line 643
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    .line 657
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4

    .line 647
    iget-object v0, p0, Lcom/android/server/AppStateTracker$UidObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->onUidGone(IZ)V

    .line 648
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 4

    .line 652
    iget-object v0, p0, Lcom/android/server/AppStateTracker$UidObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->onUidIdle(IZ)V

    .line 653
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 5

    .line 637
    iget-object p3, p0, Lcom/android/server/AppStateTracker$UidObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p3}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->onUidStateChanged(II)V

    .line 638
    return-void
.end method
