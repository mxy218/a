.class Lcom/android/server/accessibility/AccessibilityManagerService$4;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field final synthetic val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

.field final synthetic val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 4

    .line 1796
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 1800
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1801
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 1805
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 1806
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1808
    :try_start_24
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "touch_exploration_enabled"

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {p1, v2, p2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_44

    .line 1812
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1813
    nop

    .line 1814
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1815
    return-void

    .line 1812
    :catchall_44
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
