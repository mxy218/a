.class public final Lcom/android/server/pm/ShortcutService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 579
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 583
    new-instance v0, Lcom/android/server/pm/ShortcutService;

    invoke-direct {v0, p1}, Lcom/android/server/pm/ShortcutService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService$Lifecycle;->mService:Lcom/android/server/pm/ShortcutService;

    .line 584
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"  # I

    .line 593
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$Lifecycle;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->onBootPhase(I)V

    .line 594
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 588
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$Lifecycle;->mService:Lcom/android/server/pm/ShortcutService;

    const-string/jumbo v1, "shortcut"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ShortcutService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 589
    return-void
.end method

.method public onStopUser(I)V
    .registers 3
    .param p1, "userHandle"  # I

    .line 598
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$Lifecycle;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->handleStopUser(I)V

    .line 599
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 603
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$Lifecycle;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->handleUnlockUser(I)V

    .line 604
    return-void
.end method
