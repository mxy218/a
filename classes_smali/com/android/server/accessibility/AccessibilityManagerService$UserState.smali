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
    .registers 3

    .line 4021
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3970
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 3973
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    .line 3976
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    .line 3980
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 3982
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 3985
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    .line 3988
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    .line 3990
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    .line 3992
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 3999
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    .line 4000
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mNonInteractiveUiTimeout:I

    .line 4001
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractiveUiTimeout:I

    .line 4003
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    .line 4022
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 4023
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;
    .registers 1

    .line 3965
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    return-object p0
.end method

.method private getOriginalHardKeyboardValue()Z
    .registers 4

    .line 4255
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

    .line 4249
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

    .line 4223
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accessibility_soft_keyboard_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4225
    const/high16 v2, 0x40000000  # 2.0f

    and-int/2addr v0, v2

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method private saveSoftKeyboardValueToSettings(I)V
    .registers 5

    .line 4240
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4242
    and-int/lit8 v0, v0, -0x4

    or-int/2addr p1, v0

    .line 4244
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4800(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V

    .line 4246
    return-void
.end method

.method private setOriginalHardKeyboardValue(Z)V
    .registers 6

    .line 4230
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accessibility_soft_keyboard_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4232
    const v3, -0x20000001

    and-int/2addr v0, v3

    .line 4234
    if-eqz p1, :cond_19

    const/high16 v1, 0x20000000

    :cond_19
    or-int p1, v0, v1

    .line 4235
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v0, v2, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4800(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V

    .line 4237
    return-void
.end method

.method private setUserOverridesHardKeyboardSettingLocked()V
    .registers 5

    .line 4215
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4217
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/high16 v3, 0x40000000  # 2.0f

    or-int/2addr v0, v3

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v2, v1, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4800(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V

    .line 4220
    return-void
.end method


# virtual methods
.method public addServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 4

    .line 4075
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 4076
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->onAdded()V

    .line 4077
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4078
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4079
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 4081
    :cond_1c
    return-void
.end method

.method public getBindInstantServiceAllowed()Z
    .registers 3

    .line 4261
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4262
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindInstantServiceAllowed:Z

    monitor-exit v0

    return v1

    .line 4263
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

    .line 4122
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    return-object v0
.end method

.method public getClientState()I
    .registers 4

    .line 4026
    nop

    .line 4027
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/UiAutomationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 4028
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isHandlingAccessibilityEvents()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    move v0, v2

    goto :goto_19

    :cond_18
    :goto_18
    move v0, v1

    .line 4029
    :goto_19
    if-eqz v0, :cond_1c

    .line 4030
    goto :goto_1d

    .line 4029
    :cond_1c
    move v1, v2

    .line 4033
    :goto_1d
    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v0, :cond_25

    .line 4034
    or-int/lit8 v1, v1, 0x2

    .line 4036
    :cond_25
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTextHighContrastEnabled:Z

    if-eqz v0, :cond_2b

    .line 4037
    or-int/lit8 v1, v1, 0x4

    .line 4039
    :cond_2b
    return v1
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

    .line 4129
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    return-object v0
.end method

.method public getSoftKeyboardShowMode()I
    .registers 2

    .line 4133
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    return v0
.end method

.method public isHandlingAccessibilityEvents()Z
    .registers 2

    .line 4043
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

    .line 4048
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 4051
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4052
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4055
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    .line 4058
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mNonInteractiveUiTimeout:I

    .line 4059
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractiveUiTimeout:I

    .line 4062
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 4063
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 4064
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 4065
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 4066
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    .line 4067
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    .line 4068
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    .line 4069
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    .line 4070
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserNonInteractiveUiTimeout:I

    .line 4071
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserInteractiveUiTimeout:I

    .line 4072
    return-void
.end method

.method public reconcileSoftKeyboardModeWithSettingsLocked()V
    .registers 6

    .line 4191
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4192
    nop

    .line 4193
    const/4 v1, 0x0

    const-string/jumbo v2, "show_ime_with_hard_keyboard"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    move v0, v1

    .line 4194
    :goto_18
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_26

    .line 4195
    if-nez v0, :cond_26

    .line 4198
    invoke-virtual {p0, v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 4199
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->setUserOverridesHardKeyboardSettingLocked()V

    .line 4204
    :cond_26
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getSoftKeyboardValueFromSettings()I

    move-result v0

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    if-eq v0, v2, :cond_41

    .line 4206
    const-string v0, "AccessibilityManagerService"

    const-string v2, "Show IME setting inconsistent with internal state. Overwriting"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4208
    invoke-virtual {p0, v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 4209
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const-string v3, "accessibility_soft_keyboard_mode"

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4800(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V

    .line 4212
    :cond_41
    return-void
.end method

.method public removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 5

    .line 4091
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4092
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->onRemoved()V

    .line 4093
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 4095
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 4094
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 4096
    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 4100
    :cond_1f
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 4101
    nop

    :goto_25
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_3f

    .line 4102
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 4103
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4101
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 4105
    :cond_3f
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 4106
    return-void
.end method

.method public serviceDisconnectedLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 3

    .line 4117
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 4118
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4119
    return-void
.end method

.method public setBindInstantServiceAllowed(Z)V
    .registers 6

    .line 4267
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4268
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    const-string/jumbo v3, "setBindInstantServiceAllowed"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4271
    if-eqz p1, :cond_1e

    .line 4272
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindInstantServiceAllowed:Z

    .line 4273
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 4275
    :cond_1e
    monitor-exit v0

    .line 4276
    return-void

    .line 4275
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z
    .registers 8

    .line 4152
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_11

    if-eq p1, v2, :cond_11

    if-eq p1, v1, :cond_11

    .line 4155
    const-string p1, "AccessibilityManagerService"

    const-string p2, "Invalid soft keyboard mode"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    return v0

    .line 4158
    :cond_11
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    if-ne v3, p1, :cond_16

    return v2

    .line 4160
    :cond_16
    const-string/jumbo v4, "show_ime_with_hard_keyboard"

    if-ne p1, v1, :cond_44

    .line 4161
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->hasUserOverriddenHardKeyboardSettingLocked()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 4163
    return v0

    .line 4168
    :cond_22
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getSoftKeyboardValueFromSettings()I

    move-result v3

    if-eq v3, v1, :cond_3c

    .line 4169
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 4170
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_39

    move v0, v2

    .line 4169
    :cond_39
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->setOriginalHardKeyboardValue(Z)V

    .line 4173
    :cond_3c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v0, v4, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4800(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V

    goto :goto_51

    .line 4174
    :cond_44
    if-ne v3, v1, :cond_51

    .line 4175
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 4176
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getOriginalHardKeyboardValue()Z

    move-result v1

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 4175
    invoke-static {v0, v4, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4800(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V

    .line 4179
    :cond_51
    :goto_51
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->saveSoftKeyboardValueToSettings(I)V

    .line 4180
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    .line 4181
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    .line 4182
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4900(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    .line 4183
    return v2
.end method
