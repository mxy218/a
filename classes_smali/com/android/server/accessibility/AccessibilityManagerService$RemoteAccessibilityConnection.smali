.class Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoteAccessibilityConnection"
.end annotation


# instance fields
.field private final mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

.field private final mPackageName:Ljava/lang/String;

.field private final mUid:I

.field private final mUserId:I

.field private final mWindowId:I

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V
    .registers 7
    .param p1, "this$0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "windowId"  # I
    .param p3, "connection"  # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "uid"  # I
    .param p6, "userId"  # I

    .line 2648
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2649
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mWindowId:I

    .line 2650
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mPackageName:Ljava/lang/String;

    .line 2651
    iput p5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mUid:I

    .line 2652
    iput p6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mUserId:I

    .line 2653
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 2654
    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    .line 2639
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 2678
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->unlinkToDeath()V

    .line 2679
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2680
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mWindowId:I

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;II)V

    .line 2681
    monitor-exit v0

    .line 2682
    return-void

    .line 2681
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 2661
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .registers 2

    .line 2665
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .line 2657
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mUid:I

    return v0
.end method

.method public linkToDeath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2669
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2670
    return-void
.end method

.method public unlinkToDeath()V
    .registers 3

    .line 2673
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2674
    return-void
.end method
