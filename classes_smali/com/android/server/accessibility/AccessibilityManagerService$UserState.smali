.class public Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserState"
.end annotation


# instance fields
.field public mAccessibilityFocusOnlyInActiveWindow:Z

.field private mBindInstantServiceAllowed:Z

.field private final mBindingServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mBoundServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/accessibility/AccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public final mComponentNameToServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/accessibility/AccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public final mEnabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mInteractionConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;",
            ">;"
        }
    .end annotation
.end field

.field public mInteractiveUiTimeout:I

.field public mIsAutoclickEnabled:Z

.field public mIsDisplayMagnificationEnabled:Z

.field public mIsFilterKeyEventsEnabled:Z

.field public mIsNavBarMagnificationAssignedToAccessibilityButton:Z

.field public mIsNavBarMagnificationEnabled:Z

.field public mIsPerformGesturesEnabled:Z

.field public mIsTextHighContrastEnabled:Z

.field public mIsTouchExplorationEnabled:Z

.field public mLastSentClientState:I

.field public mNonInteractiveUiTimeout:I

.field public mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

.field public mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

.field public mServiceToEnableWithShortcut:Landroid/content/ComponentName;

.field private mSoftKeyboardShowMode:I

.field public final mTouchExplorationGrantedServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserId:I

.field public mUserInteractiveUiTimeout:I

.field public mUserNonInteractiveUiTimeout:I

.field public final mWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "userId"  # I

    .line 4031
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3980
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 3983
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    .line 3986
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    .line 3990
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 3992
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 3995
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    .line 3998
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    .line 4000
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    .line 4002
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 4009
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    .line 4010
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mNonInteractiveUiTimeout:I

    .line 4011
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractiveUiTimeout:I

    .line 4013
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    .line 4032
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 4033
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 3975
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    return-object v0
.end method

.method private getOriginalHardKeyboardValue()Z
    .registers 4

    .line 4265
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accessibility_soft_keyboard_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method private getSoftKeyboardValueFromSettings()I
    .registers 4

    .line 4259
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private hasUserOverriddenHardKeyboardSettingLocked()Z
    .registers 4

    .line 4233
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accessibility_soft_keyboard_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4235
    .local v0, "softKeyboardSetting":I
    const/high16 v2, 0x40000000  # 2.0f

    and-int/2addr v2, v0

    if-eqz v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method private saveSoftKeyboardValueToSettings(I)V
    .registers 7
    .param p1, "softKeyboardShowMode"  # I

    .line 4250
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4252
    .local v0, "oldSoftKeyboardSetting":I
    and-int/lit8 v2, v0, -0x4

    or-int/2addr v2, p1

    .line 4254
    .local v2, "newSoftKeyboardSetting":I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4700(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V

    .line 4256
    return-void
.end method

.method private setOriginalHardKeyboardValue(Z)V
    .registers 7
    .param p1, "originalHardKeyboardValue"  # Z

    .line 4240
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accessibility_soft_keyboard_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4242
    .local v0, "oldSoftKeyboardSetting":I
    const v3, -0x20000001

    and-int/2addr v3, v0

    .line 4244
    if-eqz p1, :cond_19

    const/high16 v1, 0x20000000

    :cond_19
    or-int/2addr v1, v3

    .line 4245
    .local v1, "newSoftKeyboardSetting":I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v3, v2, v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4700(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V

    .line 4247
    return-void
.end method

.method private setUserOverridesHardKeyboardSettingLocked()V
    .registers 6

    .line 4225
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4227
    .local v0, "softKeyboardSetting":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/high16 v3, 0x40000000  # 2.0f

    or-int/2addr v3, v0

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4700(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V

    .line 4230
    return-void
.end method


# virtual methods
.method public addServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 4
    .param p1, "serviceConnection"  # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 4085
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 4086
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->onAdded()V

    .line 4087
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4088
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4089
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 4091
    :cond_1c
    return-void
.end method

.method public getBindInstantServiceAllowed()Z
    .registers 3

    .line 4271
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4272
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindInstantServiceAllowed:Z

    monitor-exit v0

    return v1

    .line 4273
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getBindingServicesLocked()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 4132
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    return-object v0
.end method

.method public getClientState()I
    .registers 4

    .line 4036
    const/4 v0, 0x0

    .line 4037
    .local v0, "clientState":I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/UiAutomationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v1

    if-nez v1, :cond_16

    .line 4038
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isHandlingAccessibilityEvents()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v1, 0x1

    .line 4039
    .local v1, "a11yEnabled":Z
    :goto_17
    if-eqz v1, :cond_1b

    .line 4040
    or-int/lit8 v0, v0, 0x1

    .line 4043
    :cond_1b
    if-eqz v1, :cond_23

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v2, :cond_23

    .line 4044
    or-int/lit8 v0, v0, 0x2

    .line 4046
    :cond_23
    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTextHighContrastEnabled:Z

    if-eqz v2, :cond_29

    .line 4047
    or-int/lit8 v0, v0, 0x4

    .line 4049
    :cond_29
    return v0
.end method

.method public getEnabledServicesLocked()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 4139
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    return-object v0
.end method

.method public getSoftKeyboardShowMode()I
    .registers 2

    .line 4143
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    return v0
.end method

.method public isHandlingAccessibilityEvents()Z
    .registers 2

    .line 4053
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public onSwitchToAnotherUserLocked()V
    .registers 3

    .line 4058
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 4061
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4062
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4065
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    .line 4068
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mNonInteractiveUiTimeout:I

    .line 4069
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractiveUiTimeout:I

    .line 4072
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 4073
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 4074
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 4075
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 4076
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    .line 4077
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    .line 4078
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    .line 4079
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    .line 4080
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserNonInteractiveUiTimeout:I

    .line 4081
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserInteractiveUiTimeout:I

    .line 4082
    return-void
.end method

.method public reconcileSoftKeyboardModeWithSettingsLocked()V
    .registers 7

    .line 4201
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4202
    .local v0, "cr":Landroid/content/ContentResolver;
    nop

    .line 4203
    const/4 v1, 0x0

    const-string/jumbo v2, "show_ime_with_hard_keyboard"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    move v2, v1

    .line 4204
    .local v2, "showWithHardKeyboardSettings":Z
    :goto_18
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_26

    .line 4205
    if-nez v2, :cond_26

    .line 4208
    invoke-virtual {p0, v1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 4209
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->setUserOverridesHardKeyboardSettingLocked()V

    .line 4214
    :cond_26
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getSoftKeyboardValueFromSettings()I

    move-result v3

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    if-eq v3, v4, :cond_41

    .line 4216
    const-string v3, "AccessibilityManagerService"

    const-string v4, "Show IME setting inconsistent with internal state. Overwriting"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    invoke-virtual {p0, v1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 4219
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const-string v5, "accessibility_soft_keyboard_mode"

    invoke-static {v3, v5, v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4700(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V

    .line 4222
    :cond_41
    return-void
.end method

.method public removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 6
    .param p1, "serviceConnection"  # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 4101
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4102
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->onRemoved()V

    .line 4103
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    if-eqz v0, :cond_1f

    .line 4105
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 4104
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4106
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 4110
    :cond_1f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 4112
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 4113
    .local v1, "boundClient":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4111
    .end local v1  # "boundClient":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 4115
    .end local v0  # "i":I
    :cond_3f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 4116
    return-void
.end method

.method public serviceDisconnectedLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 4
    .param p1, "serviceConnection"  # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 4127
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 4128
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4129
    return-void
.end method

.method public setBindInstantServiceAllowed(Z)V
    .registers 6
    .param p1, "allowed"  # Z

    .line 4277
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4278
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    const-string/jumbo v3, "setBindInstantServiceAllowed"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4281
    if-eqz p1, :cond_1e

    .line 4282
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindInstantServiceAllowed:Z

    .line 4283
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 4285
    :cond_1e
    monitor-exit v0

    .line 4286
    return-void

    .line 4285
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z
    .registers 8
    .param p1, "newMode"  # I
    .param p2, "requester"  # Landroid/content/ComponentName;

    .line 4162
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_11

    if-eq p1, v2, :cond_11

    if-eq p1, v1, :cond_11

    .line 4165
    const-string v1, "AccessibilityManagerService"

    const-string v2, "Invalid soft keyboard mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4166
    return v0

    .line 4168
    :cond_11
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    if-ne v3, p1, :cond_16

    return v2

    .line 4170
    :cond_16
    const-string/jumbo v4, "show_ime_with_hard_keyboard"

    if-ne p1, v1, :cond_44

    .line 4171
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->hasUserOverriddenHardKeyboardSettingLocked()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 4173
    return v0

    .line 4178
    :cond_22
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getSoftKeyboardValueFromSettings()I

    move-result v3

    if-eq v3, v1, :cond_3c

    .line 4179
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 4180
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_39

    move v0, v2

    .line 4179
    :cond_39
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->setOriginalHardKeyboardValue(Z)V

    .line 4183
    :cond_3c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v0, v4, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4700(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V

    goto :goto_51

    .line 4184
    :cond_44
    if-ne v3, v1, :cond_51

    .line 4185
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 4186
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getOriginalHardKeyboardValue()Z

    move-result v1

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 4185
    invoke-static {v0, v4, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4700(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V

    .line 4189
    :cond_51
    :goto_51
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->saveSoftKeyboardValueToSettings(I)V

    .line 4190
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    .line 4191
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    .line 4192
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4800(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    .line 4193
    return v2
.end method
