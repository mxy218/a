.class Lcom/android/server/pm/ShortcutService$3;
.super Landroid/app/IUidObserver$Stub;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    .line 496
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onUidGone$1$ShortcutService$3(I)V
    .registers 4

    .line 505
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    const/16 v1, 0x15

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ShortcutService;->handleOnUidStateChanged(II)V

    return-void
.end method

.method public synthetic lambda$onUidStateChanged$0$ShortcutService$3(II)V
    .registers 4

    .line 499
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handleOnUidStateChanged(II)V

    return-void
.end method

.method public onUidActive(I)V
    .registers 2

    .line 510
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    .line 517
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4

    .line 504
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$WghiV-HLnzJqZabObC5uHCmb960;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$WghiV-HLnzJqZabObC5uHCmb960;-><init>(Lcom/android/server/pm/ShortcutService$3;I)V

    invoke-virtual {p2, v0}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 506
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3

    .line 514
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 5

    .line 499
    iget-object p3, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance p4, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$n_VdEzyBcjs0pGZO8GnB0FoTgR0;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$n_VdEzyBcjs0pGZO8GnB0FoTgR0;-><init>(Lcom/android/server/pm/ShortcutService$3;II)V

    invoke-virtual {p3, p4}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 500
    return-void
.end method